require 'rails_helper'

RSpec.describe "api/posts/edit", type: :view do
  before(:each) do
    @api_post = assign(:api_post, Post.create!())
  end

  it "renders the edit api_post form" do
    render

    assert_select "form[action=?][method=?]", api_post_path(@api_post), "post" do
    end
  end
end
