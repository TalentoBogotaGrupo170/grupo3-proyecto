json.extract! user, :id, :nombre, :cedula, :edad, :point_id, :course_id, :poblation_id, :created_at, :updated_at
json.url user_url(user, format: :json)
