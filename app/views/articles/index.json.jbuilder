json.array!(@articles) do |article|
  json.extract! article, :title, :user_id, :body, :keywords, :allow_comments, :photo
  json.url article_url(article, format: :json)
end
