class SessionsController < ApplicationController
	def new
	end

	def create
		@admin = Admin.find_by(email_address: params[:session][:email])
		if @admin #&& user.authenticate(params[:session][:password])
			log_in @admin
			# params[:session][:remember_me] == '1' ? remember(user) : forget(user)
			# remember user
			@admin
			redirect_to admin_path(@admin)
		else
			flash.now[:danger]= 'Invalid email/password combination'
			render 'new'
		end
     # @auth = request.env['omniauth.auth']['credentials']
 end

 def destroy
 	log_out if logged_in?
 	redirect_to root_url
 end

end
