require "spec_helper"

module ActsAsAddressable
  describe LocationsController do
    describe "routing" do
      routes { ActsAsAddressable::Engine.routes }

      it "routes to #index" do
        expect(:get => "/locations").to route_to("acts_as_addressable/locations#index")
      end

      it "routes to #new" do
        expect(:get => "/locations/new").to route_to("acts_as_addressable/locations#new")
      end

      it "routes to #show" do
        expect(:get => "/locations/1").to route_to("acts_as_addressable/locations#show", id: "1")
      end

      it "routes to #edit" do
        expect(:get => "/locations/1/edit").to route_to("acts_as_addressable/locations#edit", id: "1")
      end

      it "routes to #create" do
        expect(:post => "/locations").to route_to("acts_as_addressable/locations#create")
      end

      it "routes to #update" do
        expect(:put => "/locations/1").to route_to("acts_as_addressable/locations#update", id: "1")
      end

      it "routes to #destroy" do
        expect(:delete => "/locations/1").to route_to("acts_as_addressable/locations#destroy", id: "1")
      end

    end
  end
end
