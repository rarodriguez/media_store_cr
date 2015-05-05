class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :downloads
      t.integer :store_id
      t.string :tags
      t.string :small_description
      t.string :author
      t.datetime :release_date
      t.string :version
      
      t.timestamps null: false
    end
  end
end
