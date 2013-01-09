class Job < ActiveRecord::Base
  attr_accessible :contact, :description, :name, :type, :user_id
end
