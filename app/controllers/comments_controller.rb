class CommentsController < ApplicationController
  def create
    @comment = current_user.post_comments.build(comments_params)
    @comment.comment_post_id = params[:post][:id]
    @comment.save
  end

  private

  def comments_params
    params.expect(comment: [ :content ])
  end
end
