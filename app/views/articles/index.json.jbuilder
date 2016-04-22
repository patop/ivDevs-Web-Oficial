json.array!(@articles) do |article|
  json.extract! article, :id, :user_id, :tag_id, :category, :title, :body, :status, :slug
  json.url article_url(article, format: :json)
end
