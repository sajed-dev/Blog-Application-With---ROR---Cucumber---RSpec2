Given /^I am on posts page$/ do   
visit "/posts"
end

When /^I log in as "([^\"]*)" with "([^\"]*)"$/ do |username, password|
  if page.driver.respond_to?(:basic_auth)
  page.driver.basic_auth(username, password)
elsif page.driver.respond_to?(:basic_authorize)
  page.driver.basic_authorize(username, password)
elsif page.driver.respond_to?(:browser) && page.driver.browser.respond_to?(:basic_authorize)
  page.driver.browser.basic_authorize(username, password)
else
  raise "I don't know how to log in!"
end
end

When /^I delete post "(.*)"$/ do |id|
@post = Post.find(Integer(id))
@post.destroy
end

Then /^I have a new post "(.*?)"$/ do |post_name|
p = Post.new(:name => post_name)
p.save
end

Then /^I should see and have no posts$/ do
  post.should be_blank
end
