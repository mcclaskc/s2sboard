class Job < ActiveRecord::Base
  attr_accessible :contact, :description, :name, :job_type, :user_id
end
