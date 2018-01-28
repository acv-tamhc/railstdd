class ProductsController < ApplicationController
<<<<<<< HEAD
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
=======
>>>>>>> 7e5a8d5e09942a99f9b0c92305ecebbeca81debf
	def index
		@products = Product.all
	end

	def new
		if(params[:id])
<<<<<<< HEAD
			@product = Product.find(product_id)
    else
      @product = Product.new
		end
	end

	def create
=======
			@product = Product.find(params[:id])
		else
			@product = Product.new
		end
	end

	def create 
>>>>>>> 7e5a8d5e09942a99f9b0c92305ecebbeca81debf
		redirect_to products_path
	end

end
