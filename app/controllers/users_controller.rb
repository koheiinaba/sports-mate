class UsersController < ApplicationController
	def new
    end

    def create
    end

    def index
    end

    def show
      @users = User.all
  	  @user = current_user
  	  @clubs = @user.clubs
    end

    private

    def correct_user
      user = User.find(params[:id])
      if current_user != user
        redirect_to user_path(current_user)
      end
    end

    def user_params
    params.require(:user).permit(:name, :email,)
    end

end
