class Company < ActiveRecord::Base
  validates :ticker, presence: true

end
