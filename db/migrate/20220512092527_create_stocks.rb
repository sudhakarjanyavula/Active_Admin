class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.string :symbol
      t.float :purchase_price
      t.integer :quantity
      t.integer :remaining
      t.references :portfolio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
