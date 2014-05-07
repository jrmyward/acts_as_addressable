require "acts_as_addressable/engine"

module ActsAsAddressable
  extend ActiveSupport::Concern

  included do
    has_many :locations, as: :addressable
  end

  module ClassMethods
    def acts_as_addressable(options = {})

    end
  end

  module LocalInstanceMethods

  end

  ActiveRecord::Base.send :include, ActsAsAddressable
end
