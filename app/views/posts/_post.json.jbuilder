json.extract! post, :id, :club_id, :title, :content, :image_id, :created_at, :updated_at
json.url post_url(post, format: :json)
