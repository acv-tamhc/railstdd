class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def new
		if(params[:id])
			@product = Product.find(params[:id])
		else
			@product = Product.new
		end
	end

	def create 
		redirect_to products_path
	end

end
