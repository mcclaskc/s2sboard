class WelcomeController < ApplicationController
  def index
  	@job = Job.find(:all)
  end
end
