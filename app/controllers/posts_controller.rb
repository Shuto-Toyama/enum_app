class PostsController < ApplicationController
  def index
    @posts = Post.order(:id)
  end

  def new
    @post = Post.new
  end

  def create
    Post.create!(post_params)
    redirect_to post_path
  end

  private 

  def post_params
    paramas,require(:post).permit(:genre, :content)
  end
end
