class UsersController < ApplicationController

    def show
      @users = User.all
  	  @user = current_user
  	  @clubs = @user.clubs
    end

    def destroy
      @user = current_user
      @user.destroy
      redirect_to root_path
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
