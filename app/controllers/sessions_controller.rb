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
            redirect_to user_path(@user)
        else
            flash[:error] = "* username and/or password is invalid"
            redirect_to '/login'
        end
    end

    def fbcreate
        @user = User.find_or_create_by(uid: auth['uid']) do |u|
            u.username = auth['info']['name']
            u.email = auth['info']['email']
            u.password = auth['uid']
            u.password_confirmation = auth['uid']
        end
        session[:user_id] = @user.id
   
        redirect_to user_path(@user)
    end

    def destroy
        session.clear
        redirect_to '/'
    end

    private

    def auth
        request.env['omniauth.auth']
    end

end
