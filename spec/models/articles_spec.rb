require 'spec_helper'

describe Article do 

  it "should pull out the first 24 words of an article" do
    article = FactoryGirl.build(:article)
    expect(article.preview).to eq("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the...")
  end

end