class Article < ApplicationRecord
  belongs_to :user

  has_many :tagged_articles
  has_many :tags, through: :tagged_articles

  validates :title, :body, presence: true 
end