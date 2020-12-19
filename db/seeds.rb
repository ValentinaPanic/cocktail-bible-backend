# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cocktail.destroy_all
Ingredient.destroy_all


old_fash = Cocktail.create(name: "Old-Fashioned", image:"https://cdn.diffords.com/contrib/stock-images/2020/01/5e34299193bb6.jpg", instructions: "Add the sugar and bitters to a rocks glass, then add water, and stir until sugar is nearly dissolved.
Fill the glass with large ice cubes, add the bourbon, and gently stir to combine.
Express the oil of an orange peel over the glass, then drop in")

bourbon = Ingredient.create(name:"Bourbon - 2 oz", cocktail_id: old_fash.id)
bitters = Ingredient.create(name:"Angostura Bitters - 3 dashes", cocktail_id: old_fash.id)
sugar = Ingredient.create(name:"Sugar - 1/2 tsp", cocktail_id: old_fash.id)
