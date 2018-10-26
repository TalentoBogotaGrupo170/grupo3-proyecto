json.extract! estudiante, :id, :nombre, :cedula, :edad, :puntos_id, :poblacion_id, :created_at, :updated_at
json.url estudiante_url(estudiante, format: :json)
