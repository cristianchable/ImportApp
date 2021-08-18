require 'rails_helper'

RSpec.describe Sale, type: :model do
  it "validate presence of fields" do
    should validate_presence_of(:buyer)
    should validate_presence_of(:product)
    should validate_presence_of(:quantity)
    should validate_presence_of(:seller)
  end
end
