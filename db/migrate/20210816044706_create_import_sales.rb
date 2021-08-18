class CreateImportSales < ActiveRecord::Migration[6.1]
  def change
    create_table :import_sales do |t|
      t.integer :import_quantity

      t.timestamps
    end
  end
end
