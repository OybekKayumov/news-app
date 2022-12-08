class NewsItem < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :category, class_name: 'Category', foreign_key: 'category_id'

  has_many :news_item_dailies, dependent: :destroy
  has_many :dailies, through: :news_item_dailies
  
  has_one_attached :image, dependent: :destroy

  # has_rich_text :content
  validates :title, presence: true
  validates :content, presence: true
  validates :author_id, presence: true

  def add_selected_news_item_to_daily
    # Daily.find(daily_id).news_items << self
    # NewsItemDaily.create(news_item_id: 1, daily_id: daily_id)
  end

end
