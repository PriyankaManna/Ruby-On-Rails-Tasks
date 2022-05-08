json.extract! appointment, :id, :patient_id, :physician_id, :appointment_date, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
