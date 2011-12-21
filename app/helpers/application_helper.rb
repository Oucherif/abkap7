# Übernommen aus "Ruby on Rails Tutorial" von Michael Hartl
module ApplicationHelper

  # Return a title on a per-page basis.
  def title
    base_title = "HPPLAN Online!"                                           # Basistitel angepasst
    if @title.nil?
       base_title
    else
      "#{base_title}"+" "+"#{@title}"
    end
  end

  def logo
    image_tag("logo.png", :alt => "HPPLAN Online!", :class => "round")      # Alternative Grafikbeschreibung angepasst
  end

end
