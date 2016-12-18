json.extract! event, :id, :type, :lecture_title, :description, :email, :nb_of_times, :duration, :link_1, :link_2, :created_at, :updated_at
json.url event_url(event, format: :json)