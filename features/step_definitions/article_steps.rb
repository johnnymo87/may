# Creating default photo to be attached using Paperclip
# def mug_photo
#   Rack::Test::UploadedFile.new(Rails.root + "app/assets/images/coffee_cup.jpg", 'image/jpg')
# end

###  Background Steps

Given(/^an article by "(.*?)" titled "(.*?)" with body:$/) do |user_id, title, text|
  Article.create!({user_id: user_id, title: title, body: text})
end

Given(/^I am logged in as a site owner or writer$/) do
  name = "My Name"
  email = 'testing@man.net'
  password = 'secretpass'
  User.new(name: name, email: email, password: password, password_confirmation: password).save!

  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Sign in"
end


### Scenario Steps

Then /I should be on the "Articles" page/ do
  current_path.should == articles_path
  # save_and_open_page
end

Given /I am on the "Articles" page/ do
  visit(articles_path)
end

Given(/^I click on an article title$/) do
  click_on(Article.all[0].title)
end

Then(/^I should be on the article page$/) do
  current_path.should == article_path(Article.all[0])
end

Then(/^I should see a list of blog posts$/) do
  page.should have_content(Article.all[0].title) 
  page.should have_content(Article.all[1].title)  
end

Then(/^each blog post should have a picture$/) do
  ### Failing, but pictures appear when page is opened via Capybara, and URL's match.  ??? 
  ### Picture does not appear when page is loaded via LocalHost.  URL is right, but image not found.
  save_and_open_page
  page.should have_content(Article.all[0].photo)
  page.should have_content(Article.all[1].photo)
end

Then(/^I should see the first few lines of each post$/) do
  page.should have_content(Article.all[0].preview)
  page.should have_content(Article.all[1].preview)
end

Then(/^I should see the full text of the article$/) do
  page.should have_content(Article.all[0].body)
end

Then(/^I should see the article photo$/) do
  ###  Failing, but picture appears when page is opened, and URL's match.  ??? 
  ### Picture does not appear when page is loaded via LocalHost.  URL is right, but image not found.
  save_and_open_page
  page.should have_content(Article.all[0].photo)
end