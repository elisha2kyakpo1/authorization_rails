# frozen_string_literal: true

class CommentsController < ApplicationController
  class CommentsController < ApplicationController
    def create
      @post = Article.find(params[:article_id])
      @comment = @post.comments.create(comment_params)

      if @comment.save
        redirect_to article_path(@articles)
      else
        render :new
      end
    end

    private

    def comment_params
      params.require(:comment).permit(:body)
    end
  end
end
