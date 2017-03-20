require 'rails_helper'

RSpec.describe "api/articles/edit", type: :view do
  before(:each) do
    @api_article = assign(:api_article, Article.create!())
  end

  it "renders the edit api_article form" do
    render

    assert_select "form[action=?][method=?]", api_article_path(@api_article), "post" do
    end
  end
end
