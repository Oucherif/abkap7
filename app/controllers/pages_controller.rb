# Übernommen aus "Ruby on Rails Tutorial" von Michael Hartl
class PagesController < ApplicationController

  def help
    @title = "Help"
  end

  def home
    @title = "Home"
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end

end
