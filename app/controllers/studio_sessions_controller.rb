class StudioSessionsController < ApplicationController

    def show
        @studio_session = StudioSession.find_by(id: params[:id])
    end

    def index
        @studio_sessions = StudioSession.all
    end
    
    def new
        @studio_session = StudioSession.new
    end

    def create
        @studio_session = StudioSession.create(studio_session_params)
        @studio_session.cost = params[:studio_session][:duration].to_i*@studio_session.studio.hourly_rate
        @studio_session.save
        redirect_to studio_session_path(@studio_session)
    end

    def edit
        @studio_session = StudioSession.find_by(id: params[:id])
    end

    def update
        @studio_session = StudioSession.find_by(id: params[:id])
        @studio_session.update(studio_session_params)
        redirect_to studio_session_path(@studio_session)
    end


    private

    def studio_session_params
        params.require(:studio_session).permit(
        :session_time,
        :duration,
        :special_req,
        :studio_id,
        :user_ids
        )
    end
    
end
