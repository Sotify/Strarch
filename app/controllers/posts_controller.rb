class PostsController < ApplicationController
  
  before_action :move_to_index, except: :index
  
  def index
    @posts = Post.all
  end
  
  def new
  end
  
  def create
    Post.create(post_params)
  end
  
  private
  def post_params
    params.permit(:name, :title, :image, :text)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
