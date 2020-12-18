class CocktailSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image, :instructions, :ingredients
end
