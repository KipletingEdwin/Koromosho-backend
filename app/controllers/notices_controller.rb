class NoticesController < ApplicationController

    def index
        notice = Notice.all
        render json: notice, status: :ok

    end

    def show
        notice = find_notice
        render json: notice

    end

    def create
        notice = Notice.create(notice_params)
        render json: notice, status: :created
    end

    def update
        notice = find_notice
        notice.update(notice_params)
        render json: notice, status: :ok
    end

    def destroy
        notice = find_notice
        notice.destroy
        head :no_content
    end





    private
    def find_notice
        Notice.find(params[:id])
    end

    def notice_params
        params.require(:notice).permit(:date, :event)
    end
end
