require "rails_helper"

RSpec.describe Product, type: :model do
	context 'Product Test' do
		# it 'validates the presence of title' do
		# 	product  = Product.new(title: '')
		# 	product.validate
		# 	expect(product.errors.messages).to include(title: ["can't be blank"])
		# end

		it { should validate_presence_of(:title) }
		it { should validate_presence_of(:description) }

		it { should belong_to(:category) }

		# title < description
		# it 'Check title less than description' do 
		# 	product = Product.new(title: 'title language description', description: 'description')
		# 	product.validate
		# 	expect(product.errors.messages).to include(title: ['Title less than description'])
		# end
	end
end
