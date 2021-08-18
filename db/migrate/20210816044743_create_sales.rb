class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.string :buyer
      t.references :product, null: false, foreign_key: true
      t.integer :quantity
      t.references :seller, null: false, foreign_key: true

      t.timestamps
    end
  end
end
