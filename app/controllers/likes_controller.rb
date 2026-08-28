class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(like_params)
    @like.save
  end

  def destroy
    @like = current_user.likes.find(params[:id])
    @like.destroy
  end

  private

  def like_params
    params.expect(like: [ :likeable_id, :likeable_type ])
  end
end
