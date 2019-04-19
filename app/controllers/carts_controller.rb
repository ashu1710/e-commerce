class CartsController < ApplicationController

    def index 
        @carts = Cart.where(user_id: current_user.id)
    end

    def create
        @user_id = current_user.id
        @p_color_s_id = params[:cart][:product_size_color_id]
        @cart_exist = Cart.find_by(user_id: @user_id, product_size_color_id: @p_color_s_id)
        if @cart_exist.present?
            tot_amt = @cart_exist.product_size_color.product.price.to_i*(@cart_exist.qty+1.to_i)
            @cart_exist.update(qty: @cart_exist.qty+1, tot_amt: tot_amt)
        else
            @cart = Cart.new(cart_params)
            respond_to do |format|
                if @cart.save
                    format.js { flash.now[:error] = "Product added Successfully" } 
                end
            end    
        end
    end

    def destroy
        @cart = Cart.find_by(id: params[:id])
        respond_to do |format|
            if @cart.destroy
                format.js 
            end
        end
    end

    private
    
    def cart_params
        params[:cart][:qty] = 1
        params[:cart][:user_id] = current_user.id
        params.require(:cart).permit(:product_size_color_id, :user_id, :qty, :tot_amt)
    end
end
