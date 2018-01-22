class Category < ActiveRecord::Base 
	validates :title, :description, presence: true

	has_many :products, dependent: :destroy
end