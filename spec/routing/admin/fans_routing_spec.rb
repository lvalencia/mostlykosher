require "rails_helper"

RSpec.describe Admin::FansController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/fans").to route_to("admin/fans#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/fans/new").to route_to("admin/fans#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/fans/1").to route_to("admin/fans#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/fans/1/edit").to route_to("admin/fans#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/fans").to route_to("admin/fans#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/fans/1").to route_to("admin/fans#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/fans/1").to route_to("admin/fans#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/fans/1").to route_to("admin/fans#destroy", :id => "1")
    end

  end
end
