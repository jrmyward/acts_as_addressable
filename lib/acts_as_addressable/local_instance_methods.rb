module ActsAsAddressable

  module LocalInstanceMethods

    def home_address
      locations.where(primary: true).first
    end

  end

end
