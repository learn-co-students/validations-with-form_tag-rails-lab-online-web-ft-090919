class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params) #sets author to the new params that the user put in 
    if @author.save # its saying if thwe quthor is ssaved then do somthing 
      redirect_to author_path(@author) #in this case that somthing is redir to author 
    else
      render :new # if not send here 
    end
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
