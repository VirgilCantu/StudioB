class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by(email: params[:session][:email])
        user = user.try(:authenticate, params[:session][:password])
        byebug
        return redirect_to login_path unless user
        
        session[:user_id] = user.id

        redirect_to user_path(user)
    end

    def destroy
        session.delete :user_id
        redirect_to root_path
    end

    

end