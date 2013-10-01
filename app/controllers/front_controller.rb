class FrontController < ApplicationController
  layout "front/front"
  before_filter :load_biz

  def index
  	@bizjobs = @biz.jobs.all
  end

  def show
  	@job = @biz.jobs.find(params[:id])
  end
end
