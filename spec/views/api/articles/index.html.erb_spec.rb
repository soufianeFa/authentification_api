require 'rails_helper'

RSpec.describe "api/articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(),
      Article.create!()
    ])
  end

  it "renders a list of api/articles" do
    render
  end
end
