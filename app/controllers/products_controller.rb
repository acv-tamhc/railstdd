class ProductsController < ApplicationController
	before_action :authenticate_model!
	private def product_params
		params.require(:product).permit(:title, :description, :price, :category_id)
	end
	private def product_id
		params[:id]
	end
	private def get_product_by_id
		@product = Product.find(product_id)
	end
	def index
		@products = Product.all
	end

	def new
		if(params[:id])
			@product = Product.find(product_id)
    else
      @product = Product.new
		end
	end

	def create
			@product = Product.find(params[:id])
		else
			@product = Product.new
		end
	end

end
