class ClubsController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, only: [:edit, :show, :new, :update, :destroy]

  def index
    @club = Club.new
    @clubs = Club.all
    @categories = Category.all
  end


  def show
    @clubs = Club.find(params[:id])
    @club = Club.new
  end


  def new
    @club = Club.new
  end


  def edit
    @club = Club.find(params[:id])
  end


  def create
    @club = Club.new(club_params)
    @club.user_id = current_user.id
    if @club.save
     redirect_to club_path(@club.id)
     flash[:notice] = "商品を追加しました"
    else
      render :new
    end
  end


  def update
    @club = Club.find(params[:id])
    @club.update(club_params)
    if @club.save
      flash[:notice] = "クラブ編集しました"
      redirect_to club_path(@club.id)
    else
      render("clubs/edit")
    end
  end


  def destroy
    @club = Club.find(params[:id])
    @club.destroy
    redirect_to clubs_path
  end

  private

    def correct_user
      club = Club.find(params[:id])
      if current_user != club.user
        redirect_to clubs_path
      end
    end

    def club_params
      params.require(:club).permit(:name, :introduction, :category_id, :club_image, :email, :member, :place, :time, :user_id)
    end

end
