class JobsController < ApplicationController
  before_filter :signed_in_user, only: [:new, :destroy, :edit, :update]
  before_filter :correct_user, only: [:destroy, :edit, :update]

  # GET /jobs
  # GET /jobs.json
  def index
    @jobs = current_user.jobs

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jobs }
    end
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
    @job = Job.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @job }
    end
  end

  # GET /jobs/new
  # GET /jobs/new.json
  def new
    @job = Job.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @job }
    end
  end

  # GET /jobs/1/edit
  def edit
    @job = Job.find(params[:id])
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = current_user.jobs.build(params[:job])
    if @job.save
      flash[:success] = "Job Added!"
      redirect_to root_url
    end
  end

  # PUT /jobs/1
  # PUT /jobs/1.json
  def update
    @job = Job.find(params[:id])

    if @job.update_attributes(params[:job])
      flash[:success] = "The job has been updated!"
      redirect_to root_url
    end

  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    redirect_to root_url
  end

  private 

  def correct_user
    @job = current_user.jobs.find_by_id(params[:id])
    redirect_to root_url if @job.nil?
  end
end
