class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :address
      t.integer :store_id

      t.timestamps null: false
    end
  end
end
