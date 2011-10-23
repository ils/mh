class PagesController < ApplicationController
  def home
    @title = "Home"
    @menu_home = "active"
  end

  def news
    @title = "News"
    @menu_news = "active"
  end

  def pictures
    @title = "Pictures"
    @menu_pictures = "active"
  end

  def events
    @title = "Events"
    @menu_events = "active"
  end

  def about
    @title = "About"
    @menu_about = "active"
  end

end
