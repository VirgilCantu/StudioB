class SessionsController < ApplicationController

    def new
        if logged_in?
            redirect_to user_path(current_user)
        end
    end

    def create
            user = User.find_by(email: params[:session][:email])
            user = user.try(:authenticate, params[:session][:password])
            
            return redirect_to login_path, notice: "Invalid email/password combination" unless user
        
        session[:user_id] = user.id

        redirect_to user_path(user)
    end

    def destroy
        session.delete :user_id
        redirect_to root_path
    end

end