class Dashboard::SettingsController < ApplicationController
  layout "layouts/dashboard/dashboard"
  before_filter :authenticate_user!

  def index
  	@settings = current_user.settings #depending on your association config this may be .setting
  end

  def update
    @settings = current_user.settings
    @settings.update_attributes(params[:settings])
    redirect_to :back
  end
end
