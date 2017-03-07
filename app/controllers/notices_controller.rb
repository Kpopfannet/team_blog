class NoticesController < ApplicationController
  before_action :set_notice, only: [:show, :edit, :update, :destroy]

    def create
        @notice = Notice.create(x: 280, y: 550)
        ActionCable.server.broadcast("notice_create_channel", id: @notice.id )
    end

    def update
        @notice.update(x: params[:x], y: params[:y])
        ActionCable.server.broadcast("notice_update_channel", id: params[:id] ,x: params[:x], y: params[:y] )
    end

    def destroy
        @notice.destroy
        ActionCable.server.broadcast("notice_delete_channel", id: @notice.id )
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notice
      @notice = Notice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notice_params
      params.fetch(:notice, {})
    end
end
