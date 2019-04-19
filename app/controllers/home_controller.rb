class HomeController < ApplicationController

    def index 
        @products = ProductSizeColor.all
        @cart = Cart.new
    end
end
