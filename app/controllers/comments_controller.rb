class CommentsController < ApplicationController
  def index
<<<<<<< Updated upstream
    
=======
    @user = current_user 
>>>>>>> Stashed changes
  end

  def show
    
  end

  def new
    @comments = Comment.new
  end

  def create
    @comments = Comment.new(comment_params)
    if@comments.save
      redirect_to root_path
    else
      render 'new'
    end
  end



  private
  def comment_params
    params.require(:comment).permit(:title, :body)
    
  end
end
