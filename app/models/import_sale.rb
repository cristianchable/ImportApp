class ImportSale < ApplicationRecord
  has_many :sales

  validates :import_quantity, presence: true
  validates :import_quantity, numericality: { only_integer: true}
end
