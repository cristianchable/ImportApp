class AddImportSaleRefToSales < ActiveRecord::Migration[6.1]
  def change
    add_reference :sales, :import_sale, null: false, foreign_key: true
  end
end
