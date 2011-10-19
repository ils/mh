class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def news
    @title = "News"
  end

  def pictures
    @title = "Pictures"
  end

  def events
    @title = "Events"
  end

  def about
    @title = "About"
  end

end
