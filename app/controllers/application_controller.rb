class ApplicationController < ActionController::Base
	helper_method :current_user
  def current_user
	if user[:user_id]
  	@current_user ||= User.find(user[:user_id])
	else
	@current_user = nil
	end
  end

end
