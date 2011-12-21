# Übernommen aus "Ruby on Rails Tutorial" von Michael Hartl
require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
   @base_title="HPPLAN Online!"                                                   # Basistitel angepasst
  end

   describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
    it "should have the right title" do
      get'help'
      response.should have_selector("title", :content => @base_title + " FAQ")           #Linkbeschreibung verändert
    end
  end


  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get'home'
      response.should have_selector("title", :content => @base_title + " Startseite")       #Test an Übersetzung angepasst
    end
  end
 describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title" do
      get 'contact'
      response.should have_selector("title", :content => @base_title + " Kontakt")         #Test an Übersetzung angepasst
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end

    it "should have the right title" do
      get 'about'
      response.should have_selector("title", :content => @base_title + " About")
    end
  end
end
