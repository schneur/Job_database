class Job < ApplicationRecord
  validates :job_title, length: { maximum: 75 }, presence: true
end
