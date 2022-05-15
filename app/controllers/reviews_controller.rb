class ReviewsController < ApplicationController
  before_action :find_recipe
  
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.recipe = @recipe
    @review.save
    redirect_to recipe_path(@recipe)
  end
  
  private

  def find_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
