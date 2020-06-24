class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new 
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save
    redirect_to post_path(@post)
  end
# Refactor the post variable into an instance variable
# Update the code with a redirect that leverages a route helper method
# shows a new form that submits content and redirects and prints out params
end
