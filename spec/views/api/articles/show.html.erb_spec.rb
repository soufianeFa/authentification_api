require 'rails_helper'

RSpec.describe "api/articles/show", type: :view do
  before(:each) do
    @api_article = assign(:api_article, Article.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
