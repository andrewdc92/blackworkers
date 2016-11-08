class PostsController < ApplicationController

  def index
    @posts = Post.all.order(created_at: :desc)
    if params[:search]

    @posts = Post.where(Instagram: params[:search])
    # render "posts/show.html.erb"
  else
    @posts = Post.all.order("created_at DESC")
  end
end

  def show
    @post = Post.find_by_id(params[:id])

  end

end
