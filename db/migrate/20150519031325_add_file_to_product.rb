class AddFileToProduct < ActiveRecord::Migration
  def self.up
    add_attachment :products, :file
  end
  
  def self.down
    remove_attachment :products, :file
  end
end
 