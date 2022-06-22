json.extract! timelog, :id, :user_id, :activity_id, :minutes, :date, :created_at, :updated_at
json.url timelog_url(timelog, format: :json)
