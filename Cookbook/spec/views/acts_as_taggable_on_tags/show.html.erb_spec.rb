require 'rails_helper'

RSpec.describe "acts_as_taggable_on_tags/show", :type => :view do
  before(:each) do
    @acts_as_taggable_on_tag = assign(:acts_as_taggable_on_tag, ActsAsTaggableOnTag.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
