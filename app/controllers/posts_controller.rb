class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update]

  def new
    @post = Post.new
  end

  def show

  end

  def edit
  end

  def create
    @post = Post.new(post_params)

  if @post.valid?
    @person.save
    redirect_to post_path(@post)
  else
    # re-render the :new template WITHOUT throwing away the invalid @person
    render :new
  end
end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      # re-render the :new template WITHOUT throwing away the invalid @person
      render :edit
  end
end

  private

  def post_params
    params.permit(:title, :category, :content)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
