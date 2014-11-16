require 'rails_helper'

RSpec.describe "acts_as_taggable_on_tags/new", :type => :view do
  before(:each) do
    assign(:acts_as_taggable_on_tag, ActsAsTaggableOnTag.new())
  end

  it "renders new acts_as_taggable_on_tag form" do
    render

    assert_select "form[action=?][method=?]", acts_as_taggable_on_tags_path, "post" do
    end
  end
end
