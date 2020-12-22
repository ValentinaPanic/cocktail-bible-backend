class CocktailsController < ApplicationController
  # before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  # GET /cocktails
  # GET /cocktails.json
  def index
    cocktails = Cocktail.all

    render json: CocktailSerializer.new(cocktails)
  end

  def show
  end

  # GET /cocktails/1/edit
  def edit
  end

  def create
      cocktail = Cocktail.new(cocktail_params)
      if cocktail.save
        
        render json: CocktailSerializer.new(cocktail), status: :accepted 
      else
        
         render json: {errors: cocktail.errors.full_messages}, status: :unprocessable_entity 
      end
  end

  # PATCH/PUT /cocktails/1
  # PATCH/PUT /cocktails/1.json
  def update
    respond_to do |format|
      if cocktail.update(cocktail_params)
        format.html { redirect_to cocktail, notice: 'Cocktail was successfully updated.' }
        format.json { render :show, status: :ok, location: cocktail }
      else
        format.html { render :edit }
        format.json { render json: cocktail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cocktails/1
  # DELETE /cocktails/1.json
  def destroy
    cocktail = Cocktail.find(params[:id])
    cocktail.destroy
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cocktail
      cocktail = Cocktail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cocktail_params
      params.require(:cocktail).permit(:name, :image, :instructions)
    end
end
