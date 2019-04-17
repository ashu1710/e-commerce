class SubCategoriesController < ApplicationController
    before_action :authenticate_user!

    def index
        @categories = Category.all
        @subcategories = SubCategory.all
        @subcategory = SubCategory.new
    end


    def create 
        @subcategory = SubCategory.new(subcategory_params)
        respond_to do |format|
            if @subcategory.save
                format.js 
            else
                format.js 
            end
        end
    end

    def destroy
        @subcategory = SubCategory.find(params[:id])
        respond_to do |format|
            if @subcategory.destroy
                format.js
            else
                format.js
            end
        end
    end

    private
    def subcategory_params
        params.require(:sub_category).permit(:category_id, :name)
    end

end
