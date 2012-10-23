require 'spec_helper'

describe "Posts" do
  describe "GET /posts" do
    it "works! Trying to test a post" do
      #Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get posts_path
      #response.status.should be(200)	  
	  visit posts_path
	  click_link "New Post"
	  fill_in "post_title", with: "TTT"
	  click_button "Save Post"	  
	  error_message = "Too short"
	  page.should have_content(error_message)
    end
  end
end

