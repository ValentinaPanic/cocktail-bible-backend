class Cocktail < ApplicationRecord
    has_many :ingredients, dependent: :destroy
end
