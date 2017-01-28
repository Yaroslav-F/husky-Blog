class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :update, :destroy, :show]
  before_action :authenticate_user!, only: [:new, :update, :create, :destroy]

  def index
    @posts = Post.all.decorate
  end

  def new
    @post = Post.new
  end

  ##
  ## @brief      POST /posts
  ##
  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def show
  end

  ##
  ## @brief      GET /posts/:id/edit
  ##
  def edit
  end

  ##
  ## @brief      PATCH  /posts/:id(.:format)
  ##             PUT    /posts/:id(.:format)
  ##
  def update
    if @post.update(post_params)
      redirect_to posts_path
    else
      render :edit
    end
  end

  ##
  ## @brief      DELETE /posts/:id(.:format)
  ##
  def destroy
    @post.destroy!
    redirect_to posts_path
  end

  private

  ##
  ## @brief      Post finder
  ##
  ## @return     {Post}@post - post with passed id
  ##
  def find_post
    @post = Post.find(params[:id]).decorate
  end

  ##
  ## @brief      Post strong params
  ##
  ## @return     {ActiveController::Params} - set of allowed params
  ##
  def post_params
    params.require(:post).permit(:body, :header)
  end
end
