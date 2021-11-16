class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
    user_id = @blogs[0].user_id
    @user = User.find_by(last_name: "Amarante")
  end

  def show
    @blog = Blog.find(params[:id])
    render :show
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to "/lu", notice: 'Blgo was created Lu!'
    else
      redirect_to "/lu", notice: 'Blgo not created Lu!'
    end
  end

  def edit
  end

  def destroy
    blog = Blog.find(params[:id])
    blog.destroy
    redirect_to blogs_path
  end

  private

  def blog_params
    params.required(:blog).permit(:title, :comment, :likes, :user_id )
  end

  def authorize_user
    if !current_user.admin?
      raise ActionController::RoutingError.new("Not Foun")
    end
  end

end
