@posts
Feature: Any user should have ability to edit posts and only registered users have ability to create/delete posts

Scenario: Create post
Given I am on posts page
When I follow "New Post" 
Then I should see "New post"
And I fill in "post[name]" with "test post 1"
And I fill in "post[title]" with "this is the first tested post"
And I fill in "post[content]" with "this is the content of the first tested post"
And I fill in "post[tags_attributes][0][name]" with "Sajed1"
And I press "Create Post"
Then I should see "Post was successfully created."
And I should see "test post 1"
And I have a new post "test post 1"

Scenario: Edit post
Given I am on posts page
When I follow "New Post" 
Then I should see "New post"
And I fill in "post[name]" with "test post 2"
And I fill in "post[title]" with "this is the second tested post"
And I fill in "post[content]" with "this is the content of the second tested post"
And I fill in "post[tags_attributes][0][name]" with "Sajed2"
And I press "Create Post"
Then I should see "Post was successfully created."
And I should see "test post 2"
When I follow "Edit"
Then I should see "Editing post"
And I fill in "post[name]" with "test post 2 (edit)"
And I press "Update Post"
And I should see "Post was successfully updated."
And I should see "test post 2 (edit)"

@javascript
Scenario: Creating two posts and delete one
Given I am on posts page
When I follow "New Post" 
Then I should see "New post"
And I fill in "post[name]" with "test post 3"
And I fill in "post[title]" with "this is the third tested post"
And I fill in "post[content]" with "this is the content of the third tested post"
And I fill in "post[tags_attributes][0][name]" with "Sajed3"
And I press "Create Post"
Then I should see "Post was successfully created."
And I should see "test post 3"
When I follow "Back"
When I follow "New Post" 
Then I should see "New post"
And I fill in "post[name]" with "test post 4"
And I fill in "post[title]" with "this is the 4th tested post"
And I fill in "post[content]" with "this is the content of the 4th tested post"
And I fill in "post[tags_attributes][0][name]" with "Sajed4"
And I press "Create Post"
Then I should see "Post was successfully created."
And I should see "test post 4"
When I follow "Back"
And I delete post "1"
Given I am on posts page
Then I should not see "test post 3"





