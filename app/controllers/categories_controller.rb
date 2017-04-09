class CategoriesController < ApplicationController
  def new

  end

  def create

    category = Category.new(
      name: params[:category]
      )

    if category.save  
      flash[:success] = "Your blog as been added"
      redirect_to "/blogs"
    elsif category.errors.any?
      redirect_to 'new.html.erb'
    end
  end
end
