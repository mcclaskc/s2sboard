class User < ActiveRecord::Base
  attr_accessible :company, :email, :location, :name, :password
end
