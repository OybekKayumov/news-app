json.extract! news_item_daily, :id, :news_item_id, :daily_id, :created_at, :updated_at
json.url news_item_daily_url(news_item_daily, format: :json)
