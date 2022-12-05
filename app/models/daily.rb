class Daily < ApplicationRecord
  has_many :news_item_dailies
  has_many :news_items, through: :news_item_dailies
end
