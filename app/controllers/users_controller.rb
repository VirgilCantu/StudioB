class UsersController < ApplicationController

    def show
        @user = User.find_by(id: params[:id])
    end

    def index
        @users = User.all.sort_by {|user| user.stage_name}
    end
    
    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        redirect_to user_path(@user)
    end

    def edit
        @user = User.find_by(id: params[:id])
    end

    def update
        @user = User.find_by(id: params[:id])
        @user.update(user_params)
        redirect_to user_path(@user)
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
            role_ids: []
        )
    end

end
