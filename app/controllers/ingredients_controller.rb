class IngredientsController < ApplicationController
  # before_action :set_ingredient, only: [:show, :edit, :update, :destroy]

  # GET /ingredients
  # GET /ingredients.json
  def index
    ingredients = Ingredient.all

    render json: IngredientSerializer.new(ingredients)
  end

  # GET /ingredients/1
  # GET /ingredients/1.json
  def show
  end

  # GET /ingredients/new
  def new
    @ingredient = Ingredient.new
  end

  # GET /ingredients/1/edit
  def edit
  end

  # POST /ingredients
  # POST /ingredients.json
  def create
    ingredient = Ingredient.new(ingredient_params)
    # byebug
    
      if ingredient.save
       
         render json: IngredientSerializer(ingredient), status: :accepted
      else
 
        render json: {errors: ingredient.errors.full_messages}, status: :unprocessable_entity 
    end
  end

  # PATCH/PUT /ingredients/1
  # PATCH/PUT /ingredients/1.json
  def update
    respond_to do |format|
      if @ingredient.update(ingredient_params)
        format.html { redirect_to @ingredient, notice: 'Ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @ingredient }
      else
        format.html { render :edit }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredients/1
  # DELETE /ingredients/1.json
  def destroy
    ingredient = Ingredient.find(params[:id])
   ingredient.destroy
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_ingredient
      
    # end

    # Only allow a list of trusted parameters through.
    def ingredient_params
      params.require(:ingredient).permit(:name, :cocktail_id)
    end
end
