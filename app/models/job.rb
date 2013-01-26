class Job < ActiveRecord::Base

  attr_accessible :contact, :description, :name, :job_type

  belongs_to :user


  validates :user_id, presence: true
  validates :name, presence: true, length: { maximum: 140 }

end
