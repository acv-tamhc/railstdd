class Product < ActiveRecord::Base
	has_attached_file :avatar, styles: { medium: '300x300', thumb: '100x100'}, default_url: '/public/not_found.png'
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
	validates :title, :description, presence: true
	# not_found.jpg
	belongs_to :category, optional: true
end
