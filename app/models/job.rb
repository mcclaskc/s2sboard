class Job < ActiveRecord::Base

  attr_accessible :contact, :description, :name, :job_type, :location, :external_link

  belongs_to :user


  validates :user_id, presence: true
  validates :name, presence: true, length: { maximum: 140 }
  validates :location, presence: true
  validates :description, presence: true, length: { maximum: 1000 }
  validates :job_type, presence: true

  validates :contact, presence: true, length: { maximum: 140 }

  def self.list(order_by, direction)
  	sql = "SELECT jobs.*, users.company FROM jobs INNER JOIN users ON jobs.user_id=users.id ORDER BY #{order_by} #{direction}"
  	self.find_by_sql(sql)
  end


end
