class WelcomeController < ApplicationController
  def index  	
  	@jobs = Job.list
  end
end
