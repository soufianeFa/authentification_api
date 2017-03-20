require 'rails_helper'

RSpec.describe "api/posts/show", type: :view do
  before(:each) do
    @api_post = assign(:api_post, Post.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
