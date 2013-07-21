require 'spec_helper'

describe "Static pages" do
 let(:base_title) { "Ruby on Rails Tutorial Sample App" }
	describe "Home page" do
    it "should have the content 'Sample App'" do
    	visit '/static_pages/home'
        page.should have_content('Sample App')
    end

    it "should have the title 'Home'" do
    	visit '/static_pages/home'
    	page.should have_selector('title',
    		:text => "#{base_title} | Home")
    end
  end
end
