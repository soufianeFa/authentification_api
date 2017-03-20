require 'rails_helper'

RSpec.describe "api/posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(),
      Post.create!()
    ])
  end

  it "renders a list of api/posts" do
    render
  end
end
