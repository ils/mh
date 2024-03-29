require 'spec_helper'

describe "articles/edit.html.erb" do
  before(:each) do
    @article = assign(:article, stub_model(Article,
      :headline => "MyText",
      :body => "MyText"
    ))
  end

  it "renders the edit article form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => articles_path(@article), :method => "post" do
      assert_select "textarea#article_headline", :name => "article[headline]"
      assert_select "textarea#article_body", :name => "article[body]"
    end
  end
end
