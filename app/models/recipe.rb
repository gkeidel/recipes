class Recipe < ApplicationRecord
  has_many :reviews, dependent: :destroy # @recipe.reviews
end
