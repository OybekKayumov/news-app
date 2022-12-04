json.extract! news_item, :id, :title, :news_status, :comment_status, :category_id, :created_at, :updated_at
json.url news_item_url(news_item, format: :json)
