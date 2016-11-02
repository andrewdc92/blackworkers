class LandingController < ApplicationController

  def index
    @posts = Post.all.order(created_at: :desc)
    @artists = Artist.all
  end


end
