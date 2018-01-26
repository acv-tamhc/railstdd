require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  let!(:product) { create(:product) }
  let!(:product1) { create(:product, title: '1234', description: '1234') }
	describe 'products#index' do
		it 'gets a list of products' do
			products = []
			#products << Product.create(title: '123', description: '1234')
			#products << Product.create(title: '123', description: '1234')
      products << product
      products << product1
			get :index # post :create
			expect(assigns(:products)).to eq products
			# expect(assigns(:product.count)).to eq products.count
		end

    it 'renders the :index view' do
      get :index
      response.should render_template :index
    end
	end

  describe 'GET #show' do
    it 'assigns the resquested product to @product' do
      product = product
      get :show, id: product.id
      assigns(:product).should eq product
    end
    it 'renders the #show view' do
      get :show, id: product
      response.should render_template :show
    end
  end
end
