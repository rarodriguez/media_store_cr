class Store < ActiveRecord::Base
	has_many :contacts
	has_and_belongs_to_many :products

	validates :name, presence:true
	validates :url, presence: true, url: true
end
