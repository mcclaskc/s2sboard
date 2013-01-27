class Job < ActiveRecord::Base

  attr_accessible :contact, :description, :name, :job_type, :location

  belongs_to :user


  validates :user_id, presence: true
  validates :name, presence: true, length: { maximum: 140 }
  validates :location, presence: true
  validates :description, presence: true, length: { maximum: 1000 }
  validates :job_type, presence: true


end
