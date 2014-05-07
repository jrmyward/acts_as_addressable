require 'spec_helper'

module ActsAsAddressable
  describe "acts_as_addressable" do
    it "responds to #locations" do
      user = User.new
      expect(user.respond_to?(:locations)).to be true
    end
  end
end
