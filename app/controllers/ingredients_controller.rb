class IngredientsController < ApplicationController
 
  def index
    ingredients = Ingredient.all
    render json: ingredients
  
  end

  def create
  
    ingredient = Ingredient.new(ingredient_params)
  
      if ingredient.save
       render json: ingredient
      
      else
        render json: {errors: ingredient.errors.full_messages}, status: :unprocessable_entity 
    end
  end

  
  # def update
  #   respond_to do |format|
  #     if @ingredient.update(ingredient_params)
  #       format.html { redirect_to @ingredient, notice: 'Ingredient was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @ingredient }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @ingredient.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  def destroy
    ingredient = Ingredient.find(params[:id])
   ingredient.destroy
    
  end

  private

    def ingredient_params
      params.require(:ingredient).permit(:name, :cocktail_id)
    end
end
