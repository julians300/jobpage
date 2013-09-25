class Settings < ActiveRecord::Base

	validates :company_name, presence: true
	belongs_to :user

end
