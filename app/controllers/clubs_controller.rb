class ClubsController < ApplicationController


  def index
    @club = Club.new
    @clubs = Club.all
  end


  def show
  end


  def new
    @club = Club.new
  end


  def edit
  end


  def create
    @club = Club.new(club_params)
    @club.user_id = current_user.id
    if @club.save!
     redirect_to club_path(@club.id)
     flash[:notice] = "商品を追加しました"
    else
      @club = Club.new
      render :new
    end
  end


  def update
  end


  def destroy
  end

  private
    def club_params
      params.require(:club).permit(:name, :introduction, :category_id, :image, :email, :member, :place, :time, :user_id)
    end

end
