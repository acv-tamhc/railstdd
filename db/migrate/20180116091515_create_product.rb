class CreateProduct < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
    	t.string :title
    	t.text   :description
    	t.float  :price
    end
  end
end