class ReferencePostComment < ActiveRecord::Migration[5.1]
  def change
  	create_table :posts_comments do |t|
  		t.references :post, index: true
  		t.references :comment, index: true
  	end
  end
end
	