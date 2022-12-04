class PagesController < ApplicationController
  def home
  end

  def editor
    @categories = Category.includes(:news_item).all
  end
end
