# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cocktail.destroy_all
Ingredient.destroy_all


old_fash = Cocktail.create(name: "Old-Fashioned", image:"https://www.liquor.com/thmb/OdGMZLH9XqRF1_WzYCg8V_jvX38=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/__opt__aboutcom__coeus__resources__content_migration__liquor__2018__05__08113350__bourbon-old-fashioned-720x720-recipe-ade6f7780c3049A99be3577e565c9bcdd.jpg", instructions: "Add the sugar and bitters to a rocks glass, then add water, and stir until sugar is nearly dissolved.
Fill the glass with large ice cubes, add the bourbon, and gently stir to combine.
Express the oil of an orange peel over the glass, then drop in")

bourbon = Ingredient.create(name:"Bourbon - 2 oz", cocktail_id: old_fash.id)
bitters = Ingredient.create(name:"Angostura Bitters - 3 dashes", cocktail_id: old_fash.id)
sugar = Ingredient.create(name:"Sugar - 1/2 tsp", cocktail_id: old_fash.id)
