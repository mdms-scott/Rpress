Feature: Post Management & Display
	In order to provide quality content
	As an author
	I need to be able to manage posts
	
	Scenario: Show Post
		Given I have a post
		And my post has a title "My Post"
		And my post has body "This is my post."
		And my post has author with name "Matthew Scott"
		And my post was published on "August 31, 2010"
		When I display the post
		Then I should see "My Post"
		And I should see "This is my post."
		And I should see "Matthew Scott"
		And I should see "Aug 31, 2010"
		
	Scenario: Create Post
		Given I have a user named "Matthew Scott"
		When I go to the post creation page
		And I fill in "post[title]" with "My Post Title"
		And I fill in "post[body]" with "This is my post. Indeed."
		And I select "Matthew Scott" from "post[author_id]"
		And I fill in "post[published_on]" with "Aug 31, 2010"
		And I press "Save Post"
		Then I should see "My Post Title"
		And I should see "This is my post. Indeed."
		And I should see "Matthew Scott"
		And I should see "Aug 31, 2010"
		
	Scenario: Edit Post
		Given I have a post
		And my post has a title "My Post"
		And my post has body "This is my post."
		And my post has author with name "Matthew Scott"
		And my post was published on "August 31, 2010"
		When I edit the post
		And I fill in "post[title]" with "My Post Title"
		And I fill in "post[body]" with "This is my post. Indeed."
		And I select "Matthew Scott" from "post[author_id]"
		And I fill in "post[published_on]" with "Aug 31, 2010"
		And I press "Save Post"
		Then I should see "My Post Title"
		And I should see "This is my post. Indeed."
		And I should see "Matthew Scott"
		And I should see "Aug 31, 2010"

	Scenario: Delete Post
		Given I have a post
		And my post has a title "My Post"
		And my post has body "This is my post."
		And my post has author with name "Matthew Scott"
		And my post was published on "August 31, 2010"
		When I delete the post
		Then I should not see "My Post"
		And I should not see "This is my post."
		And I should not see "Matthew Scott"
		And I should not see "Aug 31, 2010"