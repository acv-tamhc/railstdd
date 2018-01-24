class RemoveReferencePostCategory < ActiveRecord::Migration[5.1]
  def up
  	drop_table :categories_products
  end
end
