class NewsItem < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :category, class_name: 'Category', foreign_key: 'category_id'

  has_many :news_item_dailies
  has_many :dailies, through: :news_item_dailies

  has_rich_text :content
  validates :title, presence: true
  validates :author_id, presence: true
end