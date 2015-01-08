class Company < ActiveRecord::Base
  validates :ticker, presence: true

  has_many :prices

  has_many :users_companies
  has_many :users, through: :users_companies
end
