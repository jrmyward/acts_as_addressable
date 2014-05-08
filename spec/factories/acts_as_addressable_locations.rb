# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :primary_address, :class => 'ActsAsAddressable::Location' do
    country_code "USA"
    street_1 "1234 S. Main"
    street_2 ""
    city "New York"
    region "NY"
    postal_code "55555"
    latitude 1.5
    longitude 1.5
    mailing true
    physical true
    primary true
  end

  factory :secondary_address, :class => 'ActsAsAddressable::Location' do
    country_code "USA"
    street_1 "4321 S. Main"
    street_2 ""
    city "New York"
    region "NY"
    postal_code "55555"
    latitude 1.5
    longitude 1.5
    mailing false
    physical true
    primary false
  end
end
