require 'spec_helper'

describe "articles/index" do
  before(:each) do
    assign(:articles, [
      stub_model(Article,
        :title => "Title",
        :user_id => 1,
        :body => "MyText",
        :keywords => "Keywords",
        :allow_comments => false,
        :photo => ""
      ),
      stub_model(Article,
        :title => "Title",
        :user_id => 1,
        :body => "MyText",
        :keywords => "Keywords",
        :allow_comments => false,
        :photo => ""
      )
    ])
  end

  it "renders a list of articles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Keywords".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
