class CommentsController < ApplicationController
  def create
    Comment.create(text: params[:text], post_id: params[:post_id], user_id: current_user.id)
  end
end
