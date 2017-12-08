json.extract! user_education, :id, :education_type, :institution, :degree, :program, :specialization, :date_started, :date_completed, :remarks, :created_at, :updated_at
json.url user_education_url(user_education, format: :json)
