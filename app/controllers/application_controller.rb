class ApplicationController < ActionController::Base
  protect_from_forgery
	# before_filter :authenticate_user!

  def login
  	@username = params[:username]
  	@password = params[:password]
  end

  def create_account
  	@username = params[:username]
  	@password = params[:password]
  end
end
