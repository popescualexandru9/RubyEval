class User < ApplicationRecord
  has_many :articles

  validates :name, :email, presence: true 
end
