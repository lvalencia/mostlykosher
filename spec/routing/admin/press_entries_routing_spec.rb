require "rails_helper"

RSpec.describe Admin::PressEntriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/press_entries").to route_to("admin/press_entries#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/press_entries/new").to route_to("admin/press_entries#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/press_entries/1").to route_to("admin/press_entries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/press_entries/1/edit").to route_to("admin/press_entries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/press_entries").to route_to("admin/press_entries#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/press_entries/1").to route_to("admin/press_entries#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/press_entries/1").to route_to("admin/press_entries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/press_entries/1").to route_to("admin/press_entries#destroy", :id => "1")
    end

  end
end
