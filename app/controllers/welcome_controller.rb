class WelcomeController < ApplicationController
  def index 
  	check_params
  	@jobs = Job.list(@order_by, @direction)
  end

  private

  def check_params 	
  	 @order_by = Job.column_names.include?(params[:order_by]) || params[:order_by] == 'company' ? params[:order_by] : "created_at"
  	 @direction =  params[:direction] == 'asc' || params[:direction] == 'desc' ? params[:direction] : "asc"
  end
end
