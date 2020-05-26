class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def about
  end


  def new
    @category = Category.new
  end


  def edit
    @category = Category.find(params[:id])
  end


  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
      flash[:notice] = "ジャンルを追加しました"
    else
      @category = Category.new
      @categories = Category.all
      render :index
    end
  end


  def update
    @category = Category.find(params[:id])
    @category.update(category_params)

    if @category.save
      redirect_to categories_path(@category.id)
      flash[:notice] = "ジャンル名を変更しました"
    else
      render("categories/edit")
    end
  end


  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
