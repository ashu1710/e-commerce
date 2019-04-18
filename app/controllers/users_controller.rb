class UsersController < ApplicationController

    before_action :authenticate_user!

    def index
        @sellers = User.where(user_role: 'Seller')
        @customers = User.where(user_role: 'Customer')
    end

    def destroy
        @user = User.find_by(id: params[:id])

        respond_to do |format|
            if @user.destroy
                format.js
            end
        end
    end

    def edit
        @user = User.find_by(id: params[:id])
    end

    def update
        @user  =User.find_by(id: params[:id])
        @user.update(user_params)
        redirect_to users_path
    end

    private

    def user_params
        params.require(:user).permit(:email, :phone, :user_role, :seller_name, :gst_no, :address, :seller_type, :delivery_charge)
    end

end
