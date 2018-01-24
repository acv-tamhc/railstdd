require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
	describe 'products#index' do
		it 'gets a list of products' do
			products = []
			products << Product.create(title: '123', description: '1234')
			products << Product.create(title: '123', description: '1234')
			get :index # post :create
			expect(assigns(:products)).to eq products
			# expect(assigns(:product.count)).to eq products.count
		end

		it 'returns a some type of error status code' do 
			get :index
			expect(response).to render_template :index
			#expect(response).to render_template :new
		end

		it 'returns a 200 ok status' do 
			get :index
			expect(response).to have_http_status(:ok)
		end
	end

		

end