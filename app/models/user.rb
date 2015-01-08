class User < ActiveRecord::Base

  after_initialize :set_session_token

  validates :username, :password_digest, :session_token, presence: true
  validates :username, :session_token, uniqueness: true
  validates :password, length: { minimum: 6 }

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
    self.save!
  end

  def set_session_token
    self.session_token = generate_session_token
  end

  def generate_session_token
    SecureRandom::urlsafe_base64(16)
  end

end
