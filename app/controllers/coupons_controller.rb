class CouponsController < ApplicationController

    def index
        @counpons = Coupon.all
        @coupon = Coupon.new
    end

    def create
        @coupon = Coupon.new(coupon_params)
        respond_to do |format|
            if @coupon.save
                format.js
            end
        end
    end

    def destroy
        @coupon = Coupon.find_by(id: params[:id])
        respond_to do |format|
            if @coupon.destroy
                format.js
            end
        end
    end

    private

    def coupon_params 
        params.require(:coupon).permit(:code, :valid_from, :valid_to, :min_amt, :amt_discount)
    end

end
