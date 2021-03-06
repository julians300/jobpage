class JobsController < ApplicationController
  layout "front/front"
  before_filter :load_biz
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  def index
    @jobs = @biz.jobs.all
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = @biz.jobs.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:name, :description, :job_application)
    end
end
