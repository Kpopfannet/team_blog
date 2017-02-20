json.extract! article, :id, :member_id, :category_id, :templete, :thumbnail, :title, :preview, :photo, :created_at, :updated_at
json.url article_url(article, format: :json)