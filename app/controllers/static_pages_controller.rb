class StaticPagesController < ApplicationController
	before_filter :login_redir # Redirect user to Dashboard or Homepage if signed in

  def index
  end

  def features
  end

  def pricing
  end

  def about
  end

  def contact
  end

  def login_redir
    if user_signed_in?
    	redirect_to(dashboard_path)
	  else
	  end
  end

end
