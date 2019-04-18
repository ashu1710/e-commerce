class AdvertisementsController < ApplicationController

    def index
        @advertisement = Advertisement.new
        @advertisements = Advertisement.all
        @users = User.where("user_role != 'Admin' ")
    end

    def create
        @advertisement = Advertisement.new(advertisement_params)

        respond_to do |format|
            if @advertisement.save
                format.js
            end
        end
    end

    def destroy
        @advertisement = Advertisement.find_by(id: params[:id])

        respond_to do |format|
            if @advertisement.destroy
                format.js
            end
        end
    end

    private

    def advertisement_params
        params[:advertisement][:visible_right_side] = false
        params.require(:advertisement).permit(:user_id, :image, :start_date, :end_date, :visible_right_side)
    end

end
