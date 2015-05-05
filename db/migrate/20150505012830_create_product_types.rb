class CreateProductTypes < ActiveRecord::Migration
  def change
    create_table :product_types do |t|
    	t.integer :product_id
    	t.text	:description
    	t.timestamps null: false
    end
    add_index :product_types, :product_id
  end
end
