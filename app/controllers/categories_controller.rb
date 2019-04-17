class CategoriesController < ApplicationController
    before_action :authenticate_user!

    def index
        @categories = Category.all
        @category = Category.new
    end

    def create 
        @category = Category.new(category_params)
        respond_to do |format|
            if @category.save
                format.js 
            else
                format.js 
            end
        end
    end

    def destroy
        @category = Category.find(params[:id])
        respond_to do |format|
            if @category.destroy
                format.js
            else
                format.js
            end
        end
    end

    private
    def category_params
        params.require(:category).permit(:name)
    end
end
