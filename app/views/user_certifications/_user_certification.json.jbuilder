json.extract! user_certification, :id, :description, :date_issued, :date_expiry, :note, :created_at, :updated_at
json.url user_certification_url(user_certification, format: :json)
