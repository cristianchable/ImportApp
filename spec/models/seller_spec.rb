require 'rails_helper'

RSpec.describe Seller, type: :model do
  describe "validations" do
    it "validate presence of fields" do
      should validate_presence_of(:name)
      should validate_presence_of(:address)
    end
  end
end
