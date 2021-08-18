class Sale < ApplicationRecord
  belongs_to :product
  belongs_to :seller
  belongs_to :import_sale

  validates :buyer, presence: true
  validates :product, presence: true
  validates :quantity, presence: true
  validates :seller, presence: true

  validates :quantity, numericality: { only_integer: true }
end
