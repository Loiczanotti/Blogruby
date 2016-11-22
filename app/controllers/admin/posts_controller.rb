class Admin::PostsController < ApplicationController
  def index

  end
  def new
    @posts = Post.new
  end

  def create
    # @posts = Post.new(posts_params)
    Post.generate(posts_params)
    redirect_to root_path
  end

  private
    def posts_params
      params.require(:post).permit(:title, :content, :category_id)
    end
end
