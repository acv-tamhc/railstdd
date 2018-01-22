class AddRefernceProductCatgories < ActiveRecord::Migration[5.1]
  def change
  	create_table :categories_products do |t|
  		t.references :category, index: true
  		t.references :product, index: true
  	end
  end
end
