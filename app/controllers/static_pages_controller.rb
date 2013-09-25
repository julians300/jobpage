class StaticPagesController < ApplicationController
  
  # Redirect user to Dashboard or Homepage if signed in
	before_filter :login_redir

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
