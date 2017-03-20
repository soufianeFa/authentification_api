require 'rails_helper'

RSpec.describe "api/articles/new", type: :view do
  before(:each) do
    assign(:api_article, Article.new())
  end

  it "renders new api_article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do
    end
  end
end
