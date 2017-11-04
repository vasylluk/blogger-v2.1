class PagesController < ApplicationController
  def index
  	@users = User.all
    @posts = Post.all
  end
  def contact
  end
end