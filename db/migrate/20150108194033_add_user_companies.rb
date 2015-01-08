class AddUserCompanies < ActiveRecord::Migration
  def change
    create_table :users_companies do |t|
      t.integer :user_id, null: false
      t.integer :company_id, null: false
    end
  end
end
