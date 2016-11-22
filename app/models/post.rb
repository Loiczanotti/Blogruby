class Post < ApplicationRecord
  def self.generate(params)
    @posts = Post.create(
      title: params[:title],
      content: params[:content],
      category_id: params[:category_id]
    )
  end
end
