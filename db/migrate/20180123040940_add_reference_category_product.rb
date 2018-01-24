class AddReferenceCategoryProduct < ActiveRecord::Migration[5.1]
  def up
  	add_reference :products, :category, index: true
  end
  def down 
  	remove_column :products, :category_id
  end
end
