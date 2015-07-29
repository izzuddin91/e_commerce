class AdminsController < ApplicationController

	def index
		@admin = Admin.new
	end

	def show
	admin = session[:user_id]
	@product = Product.where(admin_id: admin)
	@admin =  Admin.find_by(id: admin)

	end

	def create
		@admin = Admin.create(name: params[:admin][:name], email_address: params[:admin][:email_address], password: params[:admin][:password])
		if @admin.save
			log_in @admin
			flash[:success] = "Welcome to the Sample App!"
			redirect_to @admin
		else
			render 'index'
		end
	end

	def destroy
		session.delete(:admin_id)
		redirect_to root_url
	end
	
end
