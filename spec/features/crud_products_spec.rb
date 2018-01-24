require 'rails_helper'

describe 'User can CRUD products', type: :feature do 
	it 'can create a products' do
		visit 'products/new'
		expect(page).to have_link 'Create a product'
		click_on 'Create a product'
		expect(page).to have_content 'Create Product'
		fill_in 'Title', with: 'jQuery book'
		click_on 'Submit'
		expect(page).to have_content 'jQuery book'
	end
end