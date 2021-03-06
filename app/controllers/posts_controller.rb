class PostsController < ApplicationController

  # def index
  #   @post = Post.find(1) #1番目のレコードを＠ポストに代入
  # end

  def index 
    @posts = Post.all.order(id:"DESC")  #全てのレコードを@postsに代入
  end

#  def new
#  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end

  def checked
    post = Post.find(params[:id])
    if post.checked
      post.update(checked: false)
    else
      post.update(checked: true)
    end

    item = Post.find(params[:id])
    render json:{ post: item }
  end

end
