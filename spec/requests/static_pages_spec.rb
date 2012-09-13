require 'spec_helper'

describe "Static Pages" do

  let(:base_title) {"Simple Ticket: The Pragmatic Ticket System"}

  describe "Home Page" do
    it "should have the h1 'Simple Ticket'" do
      visit '/static_pages/home'
      page.should have_selector('h1',
                        :text => 'Simple Ticket')
    end
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "#{base_title}")
    end
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title',
                        :text => "| Home")
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
                        :text => "#{base_title} | Help")
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
                        :text => "#{base_title} | About")
    end
  end

  describe "Contact" do
    it "should have the h1 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1',
                        :text => "Contact Us")
    end
    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                        :text => "#{base_title} | Contact Us")
    end
  end
end
