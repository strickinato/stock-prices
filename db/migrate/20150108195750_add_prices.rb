class AddPrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :company_id, null: false
      t.date :date
      t.integer :price
    end
  end
end
