class CreateProductsStores < ActiveRecord::Migration
  def change
    create_table :products_stores, id: false do |t|
      t.integer :product_id
      t.integer :store_id
    end
    add_index :products_stores, :product_id
    add_index :products_stores, :store_id
  end
end
