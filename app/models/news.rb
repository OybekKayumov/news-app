class News < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :category, class_name: 'Category', foreign_key: 'categories_id'

  has_rich_text :content
  # has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true
  # validates :posted_date, presence: true
  # validates :news_status, presence: true
  # validates :comment_status, presence: true
  validates :author_id, presence: true
  # validates :category_id, presence: true  
end
