json.jobs do
  json.array! @jobs do |job|
    json.id         job.id
    json.job_title   job.job_title
    json.job_description  job.job_description

    json.created_at job.created_at
  end
end