class PostsController < ApplicationController
  before_action :set_post, except: [ :index, :new, :create ]
  def index
    @posts = Post.all.includes(:post_author, post_comments: [ :comment_author, :replies ])
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.authored_posts.create(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      puts @post.content
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

  def post_params
    params.expect(post: [ :content ])
  end

  def set_post
    @post = current_user.authored_posts.find(params[:id])
  end
end
