class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
    	t.integer :product_id
    	t.integer :user_id
    	t.text :comment
    	t.integer :rating
    end
    add_index :reviews, :user_id
    add_index :reviews, :product_id
  end
end
