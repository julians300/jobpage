class JobApplicationsController < ApplicationController
  layout "front/front"
  before_action :set_job_application, only: [:show, :edit, :update, :destroy]
  before_filter :load_biz

  # def index
  #   @job_applications = JobApplication.all
  # end

  def show
  end

  def new
    @job = Job.find(params[:job_id])
    @job_application = @job.job_applications.build
    # @job_application = JobApplication.new
  end

  # GET /job_applications/1/edit
  def edit

  end

  # POST /job_applications
  # POST /job_applications.json
  def create
    @job = Job.find(params[:job_id])
    @job_application = JobApplication.find_by_user_id(params[:subdomain]).new(job_application_params)
    if @job_application.save
    end
    # @job_application = JobApplication.new(job_application_params)

    respond_to do |format|
      if @job_application.save
        format.html { redirect_to job_path(@job), notice: 'Job application was successfully created.1' }
        format.json { render action: 'show', status: :created, location: @job_application }
      else
        format.html { render action: 'new' }
        format.json { render json: job_application_path(@job_application).errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @job_application.update(job_application_params)
        format.html { redirect_to job_application_path(@job_application), notice: 'Job application was successfully updated.2' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: job_application_path(@job_application).errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @job_application.destroy
    respond_to do |format|
      format.html { redirect_to job_applications_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_application
      @job_application = JobApplication.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def job_application_params
      params.require(:job_application).permit(:name)
    end
end
