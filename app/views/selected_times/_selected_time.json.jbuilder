json.extract! selected_time, :id, :student_id, :event_id, :from_date, :to_date, :from_time, :to_time, :cell_status, :created_at, :updated_at
json.url selected_time_url(selected_time, format: :json)