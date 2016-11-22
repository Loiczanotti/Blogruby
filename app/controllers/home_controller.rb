class HomeController < ApplicationController
  layout 'application'
  def index
    @posts = Post.all
    @category = Category.all
  end
  
end
