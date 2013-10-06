Given /I am on the home page/ do
  visit('/')
end


And /I click on "(.*)"/ do |link|
  click_on(link)
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in(field, :with => value)
end


