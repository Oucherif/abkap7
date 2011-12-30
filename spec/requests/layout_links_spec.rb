# Übernommen aus "Ruby on Rails Tutorial" von Michael Hartl
require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Startseite")              #Linkbeschreibung übersetzt
  end

  it "should have a Kontakt page at '/kontakt'" do
    get '/kontakt'
    response.should have_selector('title', :content => "Kontakt")                 #Linkbeschreibung übersetzt
  end

  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end

  it "should have a FAQ page at '/faq'" do
    get '/faq'
    response.should have_selector('title', :content => "FAQ")                     #Linkbeschreibung verändert
  end

  it "should have a signup page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Registrierung")
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    response.should have_selector('title', :content => "About")
    click_link "FAQ"                                                              #Linkbeschreibung verändert
    response.should have_selector('title', :content => "FAQ")                     #Linkbeschreibung verändert
    click_link "Kontakt"                                                          #Linkbeschreibung übersetzt
    response.should have_selector('title', :content => "Kontakt")                 #Linkbeschreibung übersetzt
    click_link "Startseite"                                                       #Linkbeschreibung übersetzt
    response.should have_selector('title', :content => "Startseite")              #Linkbeschreibung übersetzt
    click_link "Jetzt registrieren!"                                              #Linkbeschreibung übersetzt
    response.should have_selector('title', :content => "Registrierung")
  end
end