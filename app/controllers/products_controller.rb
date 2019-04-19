class ProductsController < ApplicationController
    before_action :authenticate_user!
    before_action :check_user, only: [:index]

    def index
        @product = Product.new
        @products = ProductSizeColor.all
        @categories = Category.all
        category_id = params[:category_id]
        @product_color = ProductColor.all
        @product_size = ProductSize.all
        @subcategories = []
        if category_id.present? 
            @subcategories = SubCategory.where(category_id: category_id)  
        end
    end

    def create
        @product = Product.new(product_params)
        respond_to do |format|
            if @product.save
                ProductSizeColor.create(product_id: @product.id, product_color_id: params[:product_color], product_size_id: params[:product_size], available_stock: true)
                format.js  
            end
        end
    end


    def destroy
        @product = Product.find_by(id: params[:id])
        respond_to do |format|
            if @product.destroy
                format.js
            end
        end 
    end

    def listofproduct
        @products = ProductSizeColor.all
    end


    private
    def product_params
        params[:product][:user_id] = current_user.id
        params.require(:product).permit(:user_id, :images, :name, :price, :sub_category_id, images: [] )    
    end

    def check_user
        if current_user.user_role != 'Seller'
            redirect_to root_path
        end
    end
end


