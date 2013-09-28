Then /I should be on the "Articles" page/ do
  current_path.should == articles_path
  save_and_open_page
end

Given /I am on the "Articles" page/ do
  visit(articles_path)
end

Then(/^I should see a list of blog posts$/) do
  page.should have_content("First Article") 
  page.should have_content("Second Article")  
end


Given an article named "First Article" with user_id "1" and body:
      """
      This is the first article.  Edit or change...

      """