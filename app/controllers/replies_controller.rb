class RepliesController < ApplicationController
  def create
    comment = Comment.find(params[:comment][:id])
    @reply = comment.replies.build(reply_params)
    @reply.comment_author = current_user
    @reply.comment_post = comment.comment_post
    @reply.save
    redirect_back(fallback_location: root_path)
  end

  private

  def reply_params
    params.expect(reply: [ :content ])
  end
end
