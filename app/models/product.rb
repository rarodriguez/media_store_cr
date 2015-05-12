class Product < ActiveRecord::Base
	has_many :reviews
	has_and_belongs_to_many :stores
	has_one :product_type

	validates :name, presence: true
end