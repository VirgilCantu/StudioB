class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(email: params[:session][:email])
        redirect_to login_path unless @user.authenticate(params[:session][:password])
        session[:user_id] = @user.id
    end

    def destroy
        session.delete :user_id
        redirect_to "/"
    end

end