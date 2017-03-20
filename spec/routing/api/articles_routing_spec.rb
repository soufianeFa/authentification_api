require "rails_helper"

RSpec.describe Api::ArticlesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/api/articles").to route_to("api/articles#index")
    end

    it "routes to #new" do
      expect(:get => "/api/articles/new").to route_to("api/articles#new")
    end

    it "routes to #show" do
      expect(:get => "/api/articles/1").to route_to("api/articles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/api/articles/1/edit").to route_to("api/articles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/api/articles").to route_to("api/articles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/api/articles/1").to route_to("api/articles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/api/articles/1").to route_to("api/articles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/api/articles/1").to route_to("api/articles#destroy", :id => "1")
    end

  end
end
