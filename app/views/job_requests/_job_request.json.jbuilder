json.extract! job_request, :id, :title, :day, :desc, :time, :user_id, :created_at, :updated_at
json.url job_request_url(job_request, format: :json)
