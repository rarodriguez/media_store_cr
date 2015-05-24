class Contact < ActiveRecord::Base
  belongs_to :store

  validates :email, presence: true, email: true
  validates :name, presence: true
  validates :store_id, presence: true
end
