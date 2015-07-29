class ProductsController < ApplicationController
	def index
		@product = Product.new
	end


	def create
		#@product = Product.create(product_name: params[:product][:product_name], description: params[:product][:description], quantity: params[:product][:quantity], )
		@product = Product.create(product_params)
		admin = session[:user_id]
		#admin = Admin.find(:id)
		@product.update(product_name: params[:product][:product_name], description: params[:product][:description], quantity: params[:product][:quantity], admin_id: admin)
		redirect_to admin_path(@product)
	end

	private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def product_params
  params.require(:product).permit(:image)
end
end
