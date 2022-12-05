class NewsItemDaily < ApplicationRecord
  belongs_to :news_item
  belongs_to :daily
end
