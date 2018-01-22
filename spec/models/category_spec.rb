require "rails_helper"

RSpec.describe Category, type: :model do
	context 'Category Test' do
		it 'validates the presence of title' do
			category  = Category.new(title: '')
			category.validate
			expect(category.errors.messages).to include(title: ["can't be blank"])
		end

		it { should validate_presence_of(:description) }

		it { should has_many(:post) }
	end
end
