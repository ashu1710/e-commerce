class ProductColorsController < ApplicationController
    before_action :authenticate_user!

    def index
        @product_colors = ProductColor.all
        @product_color = ProductColor.new
    end

    def create 
        @product_color = ProductColor.new(product_color_params)
        respond_to do |format|
            if @product_color.save
                format.js 
            else
                format.js 
            end
        end
    end

    def destroy
        @product_color = ProductColor.find(params[:id])
        respond_to do |format|
            if @product_color.destroy
                format.js
            else
                format.js
            end
        end
    end

    private
    def product_color_params
        params.require(:product_color).permit(:name)
    end

end
