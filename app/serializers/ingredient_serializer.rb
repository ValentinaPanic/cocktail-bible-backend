class IngredientSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :cocktail_id
end
