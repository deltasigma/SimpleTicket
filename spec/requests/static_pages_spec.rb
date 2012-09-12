require 'spec_helper'

describe "Static Pages" do

  describe "Home Page" do
    it "should have the h1 'Simple Ticket'" do
      visit '/static_pages/home'
      page.should have_selector('h1',
                        :text => 'Simple Ticket')
    end
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Simple Ticket: The Pragmatic Ticket System | Home")
    end
  end

  describe "Help" do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', 
                        :text => 'Help')
    end
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "Simple Ticket: The Pragmatic Ticket System | Help")
    end
  end

  describe "About" do
    it "should have the h1 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1',
                        :text => "About")
    end
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',
                        :text => "Simple Ticket: The Pragmatic Ticket System | About")
    end
  end

end
