class JobApplication < ActiveRecord::Base
	belongs_to :job
	accepts_nested_attributes_for :job
end
