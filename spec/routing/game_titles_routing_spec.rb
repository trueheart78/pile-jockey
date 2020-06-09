require "rails_helper"

RSpec.describe GameTitlesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/game_titles").to route_to("game_titles#index")
    end

    it "routes to #new" do
      expect(:get => "/game_titles/new").to route_to("game_titles#new")
    end

    it "routes to #show" do
      expect(:get => "/game_titles/1").to route_to("game_titles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/game_titles/1/edit").to route_to("game_titles#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/game_titles").to route_to("game_titles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/game_titles/1").to route_to("game_titles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/game_titles/1").to route_to("game_titles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/game_titles/1").to route_to("game_titles#destroy", :id => "1")
    end
  end
end
