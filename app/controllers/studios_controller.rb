class StudiosController < ApplicationController
    
    before_action :set_studio, only: [:show, :edit, :update, :destroy]
    before_action :require_login
    before_action :require_manager, only: [:new, :create, :edit, :update, :destroy]
    
    def show
    end

    def index
        @studios = Studio.all.sort_by {|studio| studio.name}
    end
    
    def new
        @studio = Studio.new
    end

    def create
        @studio = Studio.new(studio_params)

        if @studio.save
            redirect_to studio_path(@studio)
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @studio.update(studio_params)
            redirect_to studio_path(@studio)
        else
            render :edit
        end
    end

    def destroy
        @studio.equipments.destroy_all

        @studio.studio_sessions.each do |ss|
            ss.user_sessions.each do |us|
                us.destroy
            end
       end

        @studio.studio_sessions.destroy_all

        @studio.destroy

        redirect_to studios_path
    end


    private

    def studio_params
        params.require(:studio).permit(
        :name,
        :location,
        :hourly_rate,
        :features,
        :description,
        :picture,
        :studio_manager_id
        )
    end

    def set_studio
        @studio = Studio.find_by(id: params[:id])
    end
end
