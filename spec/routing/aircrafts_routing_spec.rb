require "rails_helper"

RSpec.describe AircraftsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/aircrafts").to route_to("aircrafts#index")
    end

    it "routes to #new" do
      expect(:get => "/aircrafts/new").to route_to("aircrafts#new")
    end

    it "routes to #show" do
      expect(:get => "/aircrafts/1").to route_to("aircrafts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/aircrafts/1/edit").to route_to("aircrafts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/aircrafts").to route_to("aircrafts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/aircrafts/1").to route_to("aircrafts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/aircrafts/1").to route_to("aircrafts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/aircrafts/1").to route_to("aircrafts#destroy", :id => "1")
    end

  end
end
