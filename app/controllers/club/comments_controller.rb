class Club::CommentsController < ApplicationController

  # acl9 access control
  access_control do
    allow logged_in
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(params[:comment])
    redirect_to club_post_path(@post)
  end

end

