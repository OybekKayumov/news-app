class Category < ApplicationRecord
  has_many :news_items, dependent: :destroy

  validates :title, presence: true, uniqueness: true  
end
