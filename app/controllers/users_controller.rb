class UsersController < ApplicationController

    before_action :set_user, only: [:show, :edit, :update, :destroy]
    before_action :require_login

    def show
    end

    def index
        @users = User.all.sort_by {|user| user.name}
    end
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @user.update(user_params)
            redirect_to user_path(@user)
        else
            render :edit
        end
    end

    def destroy
        @user.user_sessions.destroy_all
        @user.user_roles.destroy_all
        @user.user_genres.destroy_all
        @user.destroy
        redirect_to logout_path
    end


    private

    def user_params
        params.require(:user).permit(
            :name,
            :email,
            :password,
            :location,
            :bio,
            :can_travel,
            :picture,
            :stage_name,
            role_ids: [],
            genre_ids: []
        )
    end

    def set_user
        @user = User.find_by(id: params[:id])
    end

end
