class PagesController < ApplicationController
  def home
  end

  def editor
    @categories = Category.includes(:news).all
    @world = News.where(category_id: 1)
    @uzbekistan = News.where(category_id: 2)
    @politics = News.where(category_id: 3)
    @taskent = News.where(category_id: 4)
    @business = News.where(category_id: 5)
    @opinion = News.where(category_id: 6)
    @science = News.where(category_id: 7)
    @health = News.where(category_id: 8)
    @sports = News.where(category_id: 9)
    @arts = News.where(category_id: 10)
    @books = News.where(category_id: 11)
    @style = News.where(category_id: 12)
    @food = News.where(category_id: 13)
    @travel = News.where(category_id: 14)
    @magazine = News.where(category_id: 15)
    @realstate = News.where(category_id: 16)
    @cooking = News.where(category_id: 17)
  end
end
