require 'rails_helper'

<<<<<<< HEAD
describe 'User can CRUD products', type: :feature do
	# let(:product)
=======
describe 'User can CRUD products', type: :feature do 
>>>>>>> 7e5a8d5e09942a99f9b0c92305ecebbeca81debf
	it 'can create a products' do
		visit 'products/new'
		expect(page).to have_link 'Create a product'
		click_on 'Create a product'
		expect(page).to have_content 'Create Product'
		fill_in 'Title', with: 'jQuery book'
		click_on 'Submit'
		expect(page).to have_content 'jQuery book'
	end
<<<<<<< HEAD

	it "can be create products" do

	end
end
=======
end
>>>>>>> 7e5a8d5e09942a99f9b0c92305ecebbeca81debf
