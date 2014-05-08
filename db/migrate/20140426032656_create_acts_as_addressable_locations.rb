class CreateActsAsAddressableLocations < ActiveRecord::Migration
  def change
    create_table :acts_as_addressable_locations do |t|
      t.string :country_code
      t.string :street_1
      t.string :street_2
      t.string :city
      t.string :region
      t.string :postal_code
      t.decimal :latitude,   precision: 9, scale: 6
      t.decimal :longitude,  precision: 9, scale: 6
      t.references :addressable, polymorphic: true
      t.boolean :mailing, default: true
      t.boolean :physical, default: true
      t.boolean :primary, default: true

      t.timestamps
    end

    add_index :acts_as_addressable_locations, [:addressable_type, :addressable_id], name: "aaa_locations_on_addressable_type_and_addressable_id"

  end
end
