class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.create(
            name: params[:user][:name],
            email: params[:user][:email],
            password: params[:user][:password],
            location: params[:user][:location],
            bio: params[:user][:bio],
            can_travel: params[:user][:can_travel],
            picture: params[:user][:picture],
            stage_name: params[:user][:stage_name]
        )
        @user.roles << Role.find_by(id: params[:user][:roles])

    end

    def edit
        @user = User.find_by(id: params[:id])
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
            roles: []
        )
    end

end
