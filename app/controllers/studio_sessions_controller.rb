class StudioSessionsController < ApplicationController

    before_action :set_studio, only: [:show, :edit, :update, :destroy]

    def show
    end

    def index
        @studio_sessions = StudioSession.all
    end
    
    def new
        @studio_session = StudioSession.new
    end

    def create
        @studio_session = StudioSession.new(studio_session_params)
        @studio_session.cost = params[:studio_session][:duration].to_i*@studio_session.studio.hourly_rate

        if @studio_session.save
            redirect_to studio_session_path(@studio_session)
        else
            render :new
        end
    end

    def edit
    end

    def update
        @studio_session.cost = params[:studio_session][:duration].to_i*@studio_session.studio.hourly_rate

        if @studio_session.update(studio_session_params)
            redirect_to studio_session_path(@studio_session)
        else
            render :edit
        end
    end

    def destroy
        @studio_session.user_sessions.destroy_all
        @studio_session.destroy
        redirect_to studio_sessions_path
    end

    private

    def studio_session_params
        params.require(:studio_session).permit(
        :session_time,
        :duration,
        :special_req,
        :studio_id,
        user_ids:[]
        )
    end

    def set_studio_session
        @studio_session = StudioSession.find_by(id: params[:id])
    end
    
end
