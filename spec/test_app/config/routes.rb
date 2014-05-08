Rails.application.routes.draw do

  mount ActsAsAddressable::Engine => "/locations"
end
