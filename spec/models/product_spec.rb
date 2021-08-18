require 'rails_helper'

RSpec.describe Product, type: :model do
  it "validate presence of fields" do
    should validate_presence_of(:description)
    should validate_presence_of(:price)
  end
end
