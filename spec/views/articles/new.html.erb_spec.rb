require 'spec_helper'

describe "articles/new.html.erb" do
  before(:each) do
    assign(:article, stub_model(Article,
      :headline => "MyText",
      :body => "MyText"
    ).as_new_record)
  end

  it "renders new article form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => articles_path, :method => "post" do
      assert_select "textarea#article_headline", :name => "article[headline]"
      assert_select "textarea#article_body", :name => "article[body]"
    end
  end
end
