class RecipeingredientsController < ApplicationController
  before_action :set_recipeingredient, only: [:show, :update, :destroy]

  # GET /recipeingredients
  def index
    @recipeingredients = Recipeingredient.all

    render json: @recipeingredients
  end

  # GET /recipeingredients/1
  def show
    render json: @recipeingredient
  end

  # POST /recipeingredients
  def create
    @recipeingredient = Recipeingredient.new(recipeingredient_params)

    if @recipeingredient.save
      render json: @recipeingredient, status: :created, location: @recipeingredient
    else
      render json: @recipeingredient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipeingredients/1
  def update
    if @recipeingredient.update(recipeingredient_params)
      render json: @recipeingredient
    else
      render json: @recipeingredient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipeingredients/1
  def destroy
    @recipeingredient.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipeingredient
      @recipeingredient = Recipeingredient.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipeingredient_params
      params.require(:recipeingredient).permit(:recipe_id, :ingredient_id, :date)
    end
end
