class PostsController < ApplicationController
  include ApplicationHelper
  
  before_action :check_admin, except: [:index, :show]
  
  def index
    @posts = Post.all.order("created_at desc").paginate(page: params[:page], per_page: 5)
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new post_params
    
    if @post.save
      redirect_to @post, notice: "Yeah! Post was succesfully created. ^^"
    else
      render 'new', notice: "Oh no, todo me male sal :'c"
    end
  end
  
  def show
    find_post
  end
  
  def edit
    find_post
  end
  
  def update
    find_post
    #@post.slug = nil
    if @post.update post_params
      redirect_to @post, notice: "Post updated successfully!"
    else
      render 'edit'
    end
  end
  
  def destroy
    find_post
    @post.destroy
    redirect_to posts_path
  end
  
  
################################################################################
  private
  
  def post_params
    params.require(:post).permit(:title, :content, :image, :slug)
  end
  
  def find_post
    @post = Post.friendly.find(params[:id])
  end
  
end
