class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.document_id = params[:document_id]

    @comment.save

    redirect_to document_path(@comment.document)
  end

  def comment_params
    params.require(:comment).permit(:author_name, :email, :body)
  end

end
