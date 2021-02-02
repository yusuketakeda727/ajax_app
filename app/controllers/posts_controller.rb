class PostsController < ApplicationController

  def index
    @post = Post.all.order(id: "DESC")
  end

  def create
    Post.create(content: params[:content])
    rendirect_to action: :index
  end
end

