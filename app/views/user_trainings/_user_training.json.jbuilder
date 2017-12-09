json.extract! user_training, :id, :description, :date_started, :date_completed, :note, :created_at, :updated_at
json.url user_training_url(user_training, format: :json)
