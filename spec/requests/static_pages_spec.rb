require 'rails_helper'

RSpec.describe "StaticPages" do
  describe "Home" do
    it "should have content 'Home'" do
      visit "/static_pages/home"
      expect(page).to have_content("Home")
    end
  end
  describe "Help" do
    it "should have content 'Help'" do
      visit "/static_pages/help"
      expect(page).to have_content("Help")
    end
  end
  describe "About" do
    it "should have content 'About'" do
      visit "/static_pages/about"
      expect(page).to have_content("About")
    end
  end
  describe "Contact" do
    it "should have content 'Home'" do
      visit "/static_pages/contact"
      expect(page).to have_content("Contact")
    end
  end
end
