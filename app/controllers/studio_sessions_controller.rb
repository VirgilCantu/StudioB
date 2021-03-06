class StudioSessionsController < ApplicationController

    before_action :set_studio_session, only: [:show, :edit, :update, :destroy]
    before_action :require_login
    before_action :require_manager, only: [:new, :create, :edit, :update, :destroy]
    before_action :studio_managed_by_user, only: [:new, :create, :edit, :update, :destroy]

    def show
    end
 
    def index
        if params[:studio_id]
            @studio_sessions = Studio.find(params[:studio_id]).studio_sessions
        elsif params[:user_id]
            @studio_sessions = User.find(params[:user_id]).studio_sessions
        else
            @studio_sessions = StudioSession.all
        end
    end
    
    def new
        if params[:studio_id]
            @studio_session = StudioSession.new(studio_id: params[:studio_id])
        else
            @studio_session = StudioSession.new
            @studios = Studio.where(studio_manager_id: current_user.id)
        end
    end

    def create
        @studio_session = StudioSession.new(studio_session_params)
        set_session_cost

        if @studio_session.save
            redirect_to studio_session_path(@studio_session)
        else
            @studios = Studio.where(studio_manager_id: current_user.id)
            render :new
        end
    end

    def edit
        @studios = Studio.where(studio_manager_id: current_user.id) unless params[:studio_id]
    end

    def update
        set_session_cost

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

    def set_session_cost
        @studio_session.cost = params[:studio_session][:duration].to_i*@studio_session.studio.hourly_rate
    end
    
end
