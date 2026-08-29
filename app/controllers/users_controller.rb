class UsersController < ApplicationController
  before_action :set_user
  def show
    @user_likes = current_user.likes
    @posts = @user.authored_posts.includes(parentless_comments: [ :comment_author, { replies: [ :comment_author ] } ])
  end

  def index
    @users = User.all.where.not(id: current_user.id).where.not(id: current_user.active_relationships.select(:followed_id))
  end

  private

  def set_user
    @user = User.find_by(username: params[:id])
  end
end
