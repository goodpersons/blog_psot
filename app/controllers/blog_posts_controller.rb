class BlogPostsController < ApplicationController
  before_action :set_blog_post, except: [:index, :create, :new] #only: [:show, :edit, :update, :destroy]

  def index
    @blog_posts = BlogPost.all
    # binding.irb
  end

  def show
  end

  def new
    @blog_post = BlogPost.new()
  end

  def create
    @blog_post = BlogPost.new(blog_post_params)
    if @blog_post.save
      redirect_to @blog_post
    else
      # 会将这个实例 传递到new 页面 所以这里需要设置为 实例变量（@blog_post）
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @blog_post.update(blog_post_params)
      redirect_to @blog_post
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @blog_post.destroy
    redirect_to root_path
  end


  private
  def blog_post_params
    params.require(:blog_post).permit(:title, :body)
  end

  def set_blog_post
    @blog_post = BlogPost.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end
end