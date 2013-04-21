class ApplicationController < ActionController::Base
  protect_from_forgery
	# before_filter :authenticate_user!

  def login
  	@username = params[:username]
  	@password = params[:password]
  	if @username.blank? || @password.blank?
  		flash[:error] = 'Email and Password are required to sign in.'
  		redirect_to :back and return
  	end
  end

  def create_account
  	@username = params[:username]
  	@password = params[:password]
  end

  def logout
  	link_to('Logout', destroy_user_session_path, :method => :delete)
  end
end
