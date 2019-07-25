class Ingredient < ApplicationRecord
  validates :name, uniqueness: { case_sensitive: false }, presence: true
  has_many :doses
  has_many :cocktails, through: :doses
end
