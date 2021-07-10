class HomeController < ApplicationController
  def index
    @news = News.where(published: true)
  end
end
