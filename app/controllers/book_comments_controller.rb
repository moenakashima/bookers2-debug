class BookCommentsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    comment = current_user.book_comments.new(comment_params)
    comment.book_id = @book.id
    comment.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @book = Book.find(params[:book_id])
    if user_id == current_user.id
    book_comment = BookComment.find_by(book_id: params[:book_id])
    book_comment.destroy
    redirect_back(fallback_location: root_path)
    end
    
  end
  
  private
  
  def comment_params
    params.require(:book_comment).permit(:comment)
  end
  
  
end
