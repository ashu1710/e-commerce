class AddressesController < ApplicationController

    def index
        @addresses  = Address.where(user_id: current_user.id)
        @address = Address.new
    end

    def create
        @address = Address.new(address_params)
        if @address.save
            session[:address_id] = @address.id
            redirect_to edit_user_registration_path
        end
    end

    def directselect
        session[:address_id] = params[:id]
        redirect_to edit_user_registration_path
    end


    private

    def address_params
        params[:address][:user_id] = current_user.id
        params.require(:address).permit(:user_id, :address1, :area, :city, :pincode, :state)
    end

end