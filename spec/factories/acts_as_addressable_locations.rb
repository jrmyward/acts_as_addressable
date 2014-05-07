# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :acts_as_addressable_location, :class => 'Location' do
    country_code "USA"
    street_1 "1234 S. Main"
    street_2 ""
    city "Hometown"
    region "OR"
    postal_code "55555"
    latitude 1.5
    longitude 1.5
    mailing true
    physical true
    primary true
  end
end
