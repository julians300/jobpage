class FrontController < ApplicationController
  layout "front/front"

  def index
  	@biz = User.find_by_id(params[:id])
  	@bizjobs = @biz.jobs.all
  end

  def show
  	@biz = User.find_by_id(params[:id])
  	@job = @biz.jobs.find_by_name(params[:name])
  end
end
