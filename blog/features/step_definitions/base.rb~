When /^I follow "(.*?)"$/ do |link|
  click_link link
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |field, value|
  fill_in field, :with => value
end

When /^I press "(.*?)"$/ do |button|
  click_button button
end

Then /^I should see "(.*?)"$/ do |content| 		
  page.text.match(content).should_not be_true  
end

Then /^I should not see "(.*?)"$/ do |content| 		
  page.text.match(content).should be_false  
end

