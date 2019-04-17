class ProductSizesController < ApplicationController
    before_action :authenticate_user!

    def index
        @product_sizes = ProductSize.all
        @product_size = ProductSize.new
    end

    def create 
        @product_size = ProductSize.new(product_size_params)
        respond_to do |format|
            if @product_size.save
                format.js 
            else
                format.js 
            end
        end
    end

    def destroy
        @product_size = ProductSize.find(params[:id])
        respond_to do |format|
            if @product_size.destroy
                format.js
            else
                format.js
            end
        end
    end

    private
    def product_size_params
        params.require(:product_size).permit(:size)
    end

end
