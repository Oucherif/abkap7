# Übernommen aus "Ruby on Rails Tutorial" von Michael Hartl
class PagesController < ApplicationController

  def help
    @title = "FAQ"
  end

  def home
    @title = "Startseite"                                                   #Titel der Startseite übersetzt
  end

  def contact
    @title = "Kontakt"                                                      #Titel der Kontaktseite übersetzt
  end

  def about
    @title = "About"
  end

end
