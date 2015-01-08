class AddCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :ticker

    end
  end
end
