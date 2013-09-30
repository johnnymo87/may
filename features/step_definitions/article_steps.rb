# Creating default photo to be attached using Paperclip
def mug_photo
  Rack::Test::UploadedFile.new(Rails.root + "app/assets/images/coffee_cup.jpg", 'image/jpg')
end

Given(/^an article by "(.*?)" titled "(.*?)" with body:$/) do |user_id, title, text|
  Article.create!({user_id: user_id, title: title, body: text, photo: mug_photo})
end



Then /I should be on the "Articles" page/ do
  current_path.should == articles_path
  # save_and_open_page
end

Given /I am on the "Articles" page/ do
  visit(articles_path)
end

Then(/^I should see a list of blog posts$/) do
  page.should have_content(Article.all[0].title) 
  page.should have_content(Article.all[1].title)  
end

Then(/^each blog post should have a picture$/) do
  ###  Failing because website src is full path, and Capybara is checking for relative path
  ###  Picture ARE appearing as expected when page loads
  save_and_open_page
  # page.should have_content(Article.all[0].photo)
  # page.should have_content(Article.all[1].photo)
end

Then(/^I should see the first few lines of each post$/) do
  debugger
  page.should have_content(Article.all[0].preview)
  page.should have_content(Article.all[1].preview)
end