class Job < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  has_many :job_applications
  accepts_nested_attributes_for :job_applications
end
