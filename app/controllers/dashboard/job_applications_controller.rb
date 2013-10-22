class Dashboard::JobApplicationsController < ApplicationController
  layout "layouts/dashboard/dashboard"
  before_filter :authenticate_user!
  before_action :set_job_application, only: [:show, :edit, :update, :destroy]

  # GET /job_applications
  # GET /job_applications.json
  def index
    @job_applications = current_user.job_applications.all
  end

  # GET /job_applications/1
  # GET /job_applications/1.json
  def show
    @job = current_user.job_applications.find(params[:id])
  end

  # GET /job_applications/new
  def new
    @job_application = current_user.job_applications.new
  end

  # GET /job_applications/1/edit
  def edit
  end

  # POST /job_applications
  # POST /job_applications.json
  def create
    @job_application = current_user.job_applications.new(job_application_params)

    respond_to do |format|
      if @job_application.save
        format.html { redirect_to dashboard_job_application_path(@job_application), notice: 'Job application was successfully created.' }
        format.json { render action: 'show', status: :created, location: @job_application }
      else
        format.html { render action: 'new' }
        format.json { render json: dashboard_job_application_path(@job_application).errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_applications/1
  # PATCH/PUT /job_applications/1.json
  def update
    respond_to do |format|
      if @job_application.update(job_application_params)
        format.html { redirect_to dashboard_job_application_path(@job_application), notice: 'Job application was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: dashboard_job_application_path(@job_application).errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_applications/1
  # DELETE /job_applications/1.json
  def destroy
    @job_application.destroy
    respond_to do |format|
      format.html { redirect_to dashboard_job_applications_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_application
      @job_application = current_user.job_applications.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_application_params
      params.require(:job_application).permit(:name)
    end
end
