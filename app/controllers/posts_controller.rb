class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id]) #find what you wanna change 
    if @post.update(post_params) # if what you wanna change is the change CHANGE IT 
      redirect_to post_path(@post) #send them back to where they were before with there new update 
    else
      render :edit #send them back to the edit page without there changes 
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end