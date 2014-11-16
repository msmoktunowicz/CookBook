require 'rails_helper'

RSpec.describe "acts_as_taggable_on_tags/index", :type => :view do
  before(:each) do
    assign(:acts_as_taggable_on_tags, [
      ActsAsTaggableOnTag.create!(),
      ActsAsTaggableOnTag.create!()
    ])
  end

  it "renders a list of acts_as_taggable_on_tags" do
    render
  end
end
