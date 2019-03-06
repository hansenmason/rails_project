require "rails_helper"

RSpec.describe RecipeingredientsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/recipeingredients").to route_to("recipeingredients#index")
    end


    it "routes to #show" do
      expect(:get => "/recipeingredients/1").to route_to("recipeingredients#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/recipeingredients").to route_to("recipeingredients#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/recipeingredients/1").to route_to("recipeingredients#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/recipeingredients/1").to route_to("recipeingredients#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/recipeingredients/1").to route_to("recipeingredients#destroy", :id => "1")
    end

  end
end
