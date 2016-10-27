class LandingController < ApplicationController
  def initialize
  end



  def index
    @posts = Post.all
  end

end
