require 'rails_helper'

RSpec.describe "ActsAsTaggableOnTags", :type => :request do
  describe "GET /acts_as_taggable_on_tags" do
    it "works! (now write some real specs)" do
      get acts_as_taggable_on_tags_path
      expect(response).to have_http_status(200)
    end
  end
end
