class PagesController < ApplicationController
  def home
  end

  def world
    @world = NewsItem.all.where(category_id: 1)
  end
end
