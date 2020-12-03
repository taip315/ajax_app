class PostsController < ApplicationController

  # def index
  #   @post = Post.find(1) #1番目のレコードを＠ポストに代入
  # end

 def index 
   @posts = Post.all  #全てのレコードを@postsに代入
 end

 def new
 end

 def create
  Post.create(content: params[:content])
 end
end
