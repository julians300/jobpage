json.array!(@jobs) do |job|
  json.extract! job, :name, :description
  json.url job_url(job, format: :json)
end
