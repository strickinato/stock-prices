class Company < ActiveRecord::Base
  validates :ticker, presence: true

  has_many :prices

end
