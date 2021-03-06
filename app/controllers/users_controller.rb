class UsersController < ApplicationController
    before_action :checked_for_logged_in, only: [:show]

    def show
        @user = User.find_by(id: params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        #byebug
        if @user.save
            session[:user_id] = @user.id 
            redirect_to user_path(@user) 
        else
            render :new
        end

    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :age, :goal, :password, :password_confirmation)
    end

end
