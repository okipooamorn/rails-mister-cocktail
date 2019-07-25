class Cocktail < ApplicationRecord
  validates :name, uniqueness: { case_sensitive: false }, presence: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, dependent: :destroy,through: :doses, dependent: :destroy
end
