json.extract! session, :id, :achievement_id, :user_id, :note, :date_completed, :created_at, :updated_at
json.url session_url(session, format: :json)
