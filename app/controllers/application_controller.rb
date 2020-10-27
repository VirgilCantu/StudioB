class ApplicationController < ActionController::Base
    
    helper_method :current_user, :logged_in?

    def home
    end

    def current_user
        @user = User.find_by(id: session[:user_id])
    end

    def logged_in?
        current_user != nil
    end

    private

    def require_login
        redirect_to root_path unless session.include? :user_id
    end

    def require_manager
        redirect_to root_path unless current_user.roles.include?(Role.find(4))
    end

    def require_current_user
        redirect_to root_path unless current_user.id == params[:id]
    end
    
end
