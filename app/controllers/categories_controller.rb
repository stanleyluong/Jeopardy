class CategoriesController < ApplicationController
    def create
        @cat = Category.create(category_params)
    end

    private
    
    def category_params
        params.require(:category).permit(:id, :title)
    end
end
