require 'spec_helper'

describe "articles/show" do
  before(:each) do
    @article = assign(:article, stub_model(Article,
      :title => "Title",
      :user_id => 1,
      :body => "MyText",
      :keywords => "Keywords",
      :allow_comments => false,
      :photo => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/Keywords/)
    rendered.should match(/false/)
    rendered.should match(//)
  end
end
