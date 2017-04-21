class BlogsController < ApplicationController
  def index
    @blogs = Blog.all

  end

  def new 
    @categories = Category.all
  end

  def create 
    blog = Blog.new(
      title: params[:title],
      content: params[:content],
      author: current_user.first_name,
      category_id: params[:category_id]
      )

    if blog.save  
      flash[:success] = "Your blog as been added"
      category = Categoryblog.create!(
        blog_id: blog.id,
        category_id: blog.category_id
      )
      redirect_to "/blogs/#{blog.id}"
    elsif blog.errors.any?
      redirect_to 'new.html.erb'
    end

  end

  def show
    @blog = Blog.find(params[:id])
  end

  def edit
    @blog = Blog.find(params[:id])
    @categories = Category.all
  end

  def update 
    @blog = Blog.find(params[:id])

    @blog.update(
      title: params[:title],
      content: params[:content]
      )
    
    @category = Categoryblog.find_by(blog_id:params[:id])

    @category.update(
        category_id: params[:category_id]
      )

    @category.save

    flash[:warning] = "This post has been changed"

    redirect_to "/blogs/#{@blog.id}"

  end

  def destroy
    @blog = Blog.find(params[:id])

    @blog.destroy

    redirect_to '/blogs'
  end

end
