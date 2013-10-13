module FrontHelper

  def authenticate_owner!
    if user_signed_in? && current_user.subdomain == params[:subdomain] # or something similar
      return true
    else
      return false
    end
  end

end
