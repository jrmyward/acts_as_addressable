require 'spec_helper'

module ActsAsAddressable
  describe "acts_as_addressable" do
    let(:user) { User.create!(name: "Peter Parker") }

    it "responds to #locations" do
      expect(user.respond_to?(:locations)).to be true
    end

    describe "#home_address" do

      before(:each) do
        user.locations.create! attributes_for(:primary_address)
        user.locations.create! attributes_for(:secondary_address)
      end

      it "returns the primary location" do
        expect(user.home_address.street_1).to eq "1234 S. Main"
      end
    end
  end
end
