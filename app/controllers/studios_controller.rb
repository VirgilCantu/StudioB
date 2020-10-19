class StudiosController < ApplicationController

    def show
        @studio = Studio.find_by(id: params[:id])
    end

    def index
        @studios = Studio.all.sort_by {|studio| studio.name}
    end
    
    def new
        @studio = Studio.new
    end

    def create
        @studio = Studio.create(studio_params)
        redirect_to studio_path(@studio)
    end

    def edit
        @studio = Studio.find_by(id: params[:id])
    end

    def update
        @studio = Studio.find_by(id: params[:id])
        @studio.update(studio_params)
        redirect_to studio_path(@studio)
    end

    def destroy
        @studio = Studio.find_by(id: params[:id])
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
        :picture
        )
    end
end
