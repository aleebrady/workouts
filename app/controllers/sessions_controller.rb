class SessionsController < ApplicationController

    def home

    end

    def new
        @user = User.new
        render :login
    end

    def create
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id 
            redirect_to workouts_path
        else
            render :login
        end
    end

    def destroy
        session.clear
        redirect_to '/'
    end

end
