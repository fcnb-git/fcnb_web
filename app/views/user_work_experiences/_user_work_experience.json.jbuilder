json.extract! user_work_experience, :id, :company_name, :address, :city, :province, :country, :industry, :position, :date_from, :date_to, :created_at, :updated_at
json.url user_work_experience_url(user_work_experience, format: :json)
