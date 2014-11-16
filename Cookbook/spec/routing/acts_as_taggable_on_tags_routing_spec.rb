require "rails_helper"

RSpec.describe ActsAsTaggableOnTagsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/acts_as_taggable_on_tags").to route_to("acts_as_taggable_on_tags#index")
    end

    it "routes to #new" do
      expect(:get => "/acts_as_taggable_on_tags/new").to route_to("acts_as_taggable_on_tags#new")
    end

    it "routes to #show" do
      expect(:get => "/acts_as_taggable_on_tags/1").to route_to("acts_as_taggable_on_tags#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/acts_as_taggable_on_tags/1/edit").to route_to("acts_as_taggable_on_tags#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/acts_as_taggable_on_tags").to route_to("acts_as_taggable_on_tags#create")
    end

    it "routes to #update" do
      expect(:put => "/acts_as_taggable_on_tags/1").to route_to("acts_as_taggable_on_tags#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/acts_as_taggable_on_tags/1").to route_to("acts_as_taggable_on_tags#destroy", :id => "1")
    end

  end
end
