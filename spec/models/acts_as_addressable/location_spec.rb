require 'spec_helper'

module ActsAsAddressable
  describe Location do
    let(:user) { User.create!(name: "Peter Parker") }

    describe "Validations" do
      it { should validate_presence_of(:city) }
      it { should validate_presence_of(:postal_code) }
      it { should validate_presence_of(:street_1) }

      it "allows only one primary address per addressable" do
        user.locations.create! attributes_for(:primary_address)
        second_primary = user.locations.build attributes_for(:primary_address)
        expect(second_primary).to_not be_valid
      end

    end

  end
end
