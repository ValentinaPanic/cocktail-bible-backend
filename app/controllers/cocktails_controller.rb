class CocktailsController < ApplicationController
 
  def index
    cocktails = Cocktail.all

    render json: CocktailSerializer.new(cocktails)
  end

  
  def create
      cocktail = Cocktail.new(cocktail_params)
      if cocktail.save
        
        render json: CocktailSerializer.new(cocktail), status: :accepted 
      else
        
         render json: {errors: cocktail.errors.full_messages}, status: :unprocessable_entity 
      end
  end

 
  # def update
  #   respond_to do |format|
  #     if cocktail.update(cocktail_params)
  #       format.html { redirect_to cocktail, notice: 'Cocktail was successfully updated.' }
  #       format.json { render :show, status: :ok, location: cocktail }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: cocktail.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  
  def destroy
    cocktail = Cocktail.find(params[:id])
    cocktail.destroy
    
  end

  private
   
    def cocktail_params
      params.require(:cocktail).permit(:name, :image, :instructions)
    end
end
