module ActsAsAddressable
  class Location < ActiveRecord::Base
    belongs_to :addressable, polymorphic: true
  end
end
