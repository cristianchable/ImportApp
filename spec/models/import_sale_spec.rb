require 'rails_helper'

RSpec.describe ImportSale, type: :model do
  it "validate presence of fields" do
    should validate_presence_of(:import_quantity)
  end

  it "validate field is integer" do
    should validate_numericality_of(:import_quantity).only_integer
  end

  it "validate relations" do
    should have_many(:sales)
  end
end
