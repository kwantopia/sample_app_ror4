require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  describe "Home page" do

    before { visit root_path }

    it "should have the content 'Sample App'" do
      expect(page).to have_content('Sample App')
    end

  	it "should have the right title" do
  	  expect(page).to have_title("#{base_title}")
  	end

    it "should not have Home in the title" do
      expect(page).not_to have_title("| Home")
    end
  end

  describe 'Help page' do

    before { visit help_path }
    subject { page }

    it { should have_content('Help') }
  end

  describe "About page" do
  	it "should have the content 'About Us'" do
  	  visit about_path 
  	  expect(page).to have_content('About Us')
  	end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit contact_path 
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path 
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Contact')
    end
  end

end
