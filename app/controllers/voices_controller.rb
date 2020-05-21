class VoicesController < ApplicationController
    before_action :set_voice, only: [:show, :edit, :update, :destroy]
    def index
        @voice = Voice.all
    end
    def new
        @voice = Voice.new
    end
    def create
        @voice = Voice.new
        if params[:back]
            render :new
        else
            render :new
        end
    end
    def edit
        
    end
    def show
        
    end
    def update
        if @voice.update(voice_params)
            redirect_to voices_path, notice:"発言を修正しました"
        else
            render :edit
        end
    end
    def destroy
        @voice.destroy
        redirect_to voices_path, notice:"発言を削除しました"
    end
    def confirm
        @voice = Voice.new(voice_params)
        render :new if @voice.invalid?
    private
    def voice_params
        params.require(:voice).permit(:content)
    end
    def set_voice
        @voice = Voice.find(params[:id])
    end
end