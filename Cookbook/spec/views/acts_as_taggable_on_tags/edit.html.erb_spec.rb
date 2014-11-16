require 'rails_helper'

RSpec.describe "acts_as_taggable_on_tags/edit", :type => :view do
  before(:each) do
    @acts_as_taggable_on_tag = assign(:acts_as_taggable_on_tag, ActsAsTaggableOnTag.create!())
  end

  it "renders the edit acts_as_taggable_on_tag form" do
    render

    assert_select "form[action=?][method=?]", acts_as_taggable_on_tag_path(@acts_as_taggable_on_tag), "post" do
    end
  end
end
