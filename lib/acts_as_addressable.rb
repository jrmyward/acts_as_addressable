require 'acts_as_addressable/engine'
require 'acts_as_addressable/local_instance_methods'

module ActsAsAddressable
  extend ActiveSupport::Concern

  included do

  end

  module ClassMethods
    def acts_as_addressable(options = {})
      class_eval do
        has_many :locations, as: :addressable, dependent: :destroy, class_name: 'ActsAsAddressable::Location'
      end

      include ActsAsAddressable::LocalInstanceMethods
    end
  end

  ActiveRecord::Base.send :include, ActsAsAddressable
end
