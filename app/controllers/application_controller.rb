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

    def require_managed_studio
        redirect_to root_path unless current_user.id == @studio.studio_manager_id
    end

    def studio_managed_by_user
        if params[:studio_id]
            redirect_to root_path unless Studio.find_by(id: params[:studio_id]).studio_manager_id == current_user.id
        end
    end
    
end
