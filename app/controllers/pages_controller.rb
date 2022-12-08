class PagesController < ApplicationController
  def home
  end

  def world
    @world = NewsItem.all.where(category_id: 1)    
  end

  def uzbekistan
    @uzbekistan = NewsItem.all.where(category_id: 2)
  end

  def politics
    @politics = NewsItem.all.where(category_id: 3)
  end

  def taskhent
    @taskhent = NewsItem.all.where(category_id: 4)
  end

  def business
    @business = NewsItem.all.where(category_id: 5)
  end

  def opinion
    @opinion = NewsItem.all.where(category_id: 6)
  end

  def science
    @science = NewsItem.all.where(category_id: 7)
  end

  def health
    @health = NewsItem.all.where(category_id: 8)
  end

  def sports
    @sports = NewsItem.all.where(category_id: 9)
  end

  def arts
    @arts = NewsItem.all.where(category_id: 10)
  end

  def books
    @books = NewsItem.all.where(category_id: 11)
  end

  def style
    @style = NewsItem.all.where(category_id: 12)
  end

  def food
    @food = NewsItem.all.where(category_id: 13)
  end

  def travel
    @travel = NewsItem.all.where(category_id: 14)
  end

  def magazine
    @magazine = NewsItem.all.where(category_id: 15)
  end

  def realestate
    @realestate = NewsItem.all.where(category_id: 16)
  end
end
