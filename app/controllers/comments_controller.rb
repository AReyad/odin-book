class CommentsController < ApplicationController
  def create
    @comment = current_user.post_comments.build(comment_params)
    @comment.comment_post_id = params[:post][:id]
    @comment.save
    redirect_back(fallback_location: root_path)
  end

  private

  def comment_params
    params.expect(comment: [ :content ])
  end
end
