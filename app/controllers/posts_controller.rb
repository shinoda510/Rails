class PostsController < ApplicationController
  def index
    @texts = [
      "Great","Good","Bad","Soso..."
      ]
    @posts = Post.all[0]
  end
end
