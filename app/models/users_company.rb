class UsersCompany < ActiveRecord::Base
  belongs_to :company
  belongs_to :user
end
