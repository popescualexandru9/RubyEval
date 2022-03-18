class Tag < ApplicationRecord
  has_many :tagged_articles
  has_many :articles, through: :tagged_articles

  validates :name, presence: true
end