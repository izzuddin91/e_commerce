class OrdersController < ApplicationController

	def index
		@product = Product.all
	end

	def new
		@order = Order.new
	end

	def show
		@order = Order.new
		
	end

	def create
		Order.create(name: params[:order][:name], email_address: params[:order][:email_address], phone_number: params[:order][:phone_number], address: params[:order][:address],  product_id: params[:product_id])
		redirect_to action: "index"
	end


end
