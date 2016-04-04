class CommentsController < ApplicationController
  def create
    @document = Document.find(params[:document_id])
    @comment = @document.comments.create(comment_params)

    if @comment.save
      redirect_to document_path(@document, anchor:  "comments")
    else
      @documents = Document.all
      render "documents/show"
    end
  end

  private 
  def comment_params
    params.require(:comment).permit(:author_name, :email, :body)
  end

end
