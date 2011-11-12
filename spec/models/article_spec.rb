require 'spec_helper'

describe Article do
  
  headline = "Sample Heading Appears on Local Website"
  body = "body"
  date = "2011-11-10 08:05:01"
  
  before(:each) do
    @article = { :headline => "headline", :body => "bodies" }
  end
  
  it "should create a new instance given valid attributes" do
    Article.create!(@article)
  end
  
  it "should require a headline" do
    headless_article = Article.new(@article.merge(:headline => ""))
    headless_article.should_not be_valid
  end
  
  it "should require text in the body" do
    no_body_article = Article.new(@article.merge(:body => ""))
    no_body_article.should_not be_valid
  end
  
end