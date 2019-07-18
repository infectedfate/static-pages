require 'rails_helper'

RSpec.describe "StaticPages" do

  describe "Home" do
    it "should have content 'Home'" do
      visit root_path
      expect(page).to have_content("Home")
    end
    it "should have base title" do
      visit root_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should have a custom page title" do
      visit root_path
      expect(page).to have_title("| Home")
    end
  end

  describe "Help" do
    it "should have content 'Help'" do
      visit help_path
      expect(page).to have_content("Help")
    end
    it "should have base title" do
      visit help_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
    it "should have a custom page title" do
      visit help_path
      expect(page).to have_title("| Help")
    end
  end

  describe "About" do
    it "should have content 'About'" do
      visit about_path
      expect(page).to have_content("About")
    end
    it "should have base title" do
      visit about_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
    it "should have a custom page title" do
      visit about_path
      expect(page).to have_title("| About")
    end
  end

  describe "Contact" do
    it "should have content 'Home'" do
      visit contact_path
      expect(page).to have_content("Contact")
    end
    it "should have base titlew" do
      visit contact_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
    it "should have a custom page title" do
      visit contact_path
      expect(page).to have_title("| Contact")
    end
  end

end
