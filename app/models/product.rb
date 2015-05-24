class Product < ActiveRecord::Base
  has_many :reviews
  has_and_belongs_to_many :stores
  has_one :product_type

  has_attached_file :file #, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :file, :content_type => /\Aimage\/.*\Z/

  validates :name, presence: true
  validates :small_description, presence: true
  validates :stores, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: {greater_than: 0.0}
end