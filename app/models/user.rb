class User < ActiveRecord::Base

  attr_accessor :password

  after_initialize :set_session_token

  validates :username, :password_digest, :session_token, presence: true
  validates :username, :session_token, uniqueness: true

  has_many :users_companies
  has_many :companies, through: :users_companies

  def self.find_by_credentials(username, password)
    user = self.find_by_username(username)

    if user && user.is_password?(password)
      return user
    end

    nil
  end

  def is_password?(password)
    BCrypt::Password.new(password_digest).is_password?(password)
  end

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  end

  def set_session_token
    self.session_token = generate_session_token
  end

  def generate_session_token
    SecureRandom::urlsafe_base64(16)
  end

  def reset_session_token!
    self.session_token = generate_session_token
    self.save!
    self.session_token
  end

end
