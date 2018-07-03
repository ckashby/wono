class JobRequest < ApplicationRecord
	belongs_to :user
	verify_presence_of :title, :day, :desc, :time
	
end
