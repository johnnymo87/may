require 'spec_helper'

describe "articles/edit" do
  before(:each) do
    @article = assign(:article, stub_model(Article,
      :title => "MyString",
      :user_id => 1,
      :body => "MyText",
      :keywords => "MyString",
      :allow_comments => false,
      :photo => ""
    ))
  end

  it "renders the edit article form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => articles_path(@article), :method => "post" do
      assert_select "input#article_title", :name => "article[title]"
      assert_select "input#article_user_id", :name => "article[user_id]"
      assert_select "textarea#article_body", :name => "article[body]"
      assert_select "input#article_keywords", :name => "article[keywords]"
      assert_select "input#article_allow_comments", :name => "article[allow_comments]"
      assert_select "input#article_photo", :name => "article[photo]"
    end
  end
end
