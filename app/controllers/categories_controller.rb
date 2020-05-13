class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end


  def show
  end


  def new
    @category = Category.new
  end


  def edit
    @category = Category.find(params[:id])
  end


  def create
  end


  def update
    @category = Category.find(params[:id])
    @category.update(category_params)

    if @category.save
      redirect_to categories_path(@category.id)
    else
      render("categories/edit")
    end
  end


  def destroy
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
