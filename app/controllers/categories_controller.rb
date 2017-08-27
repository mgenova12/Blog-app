class CategoriesController < ApplicationController
  def new

  end

  def create

    @category = Category.new(
      name: params[:category]
      )

    @category.save

    if @category.save  
      flash[:success] = "Your category as been added"
      redirect_to "/blogs"
    else
      flash[:danger] = "Please add a Category"
      redirect_to 'new.html.erb'
    end

  end
  
end
