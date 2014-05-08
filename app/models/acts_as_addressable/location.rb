module ActsAsAddressable
  class Location < ActiveRecord::Base
    belongs_to :addressable, polymorphic: true

    validates_presence_of :city, :postal_code, :street_1
    validate :multiple_primary, if: "self.primary?"

    scope :primary, -> { where primary: true }

    def self.for_addressable(location)
      where(addressable_id: location.addressable_id).where(addressable_type: location.addressable_type)
    end

    def has_primary?
      !!primary_location_for_addressable
    end

    def primary_location_for_addressable
      @primary_location_for_addressable ||= Location.primary.for_addressable(self).first
    end

    private

    def multiple_primary
      if has_primary?
        unless self.id && self.id == primary_location_for_addressable.id
          errors.add(:base, 'A primary address already exists.')
        end
      end
    end

  end
end
