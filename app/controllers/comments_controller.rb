# frozen_string_literal: true

class CommentsController < ApplicationController
  class CommentsController < ApplicationController
    def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.create(comment_params)

      if @comment.save
        redirect_to post_path(@posts)
      else
        render :new
      end
    end

    private

    def comment_params
      params.require(:userid).permit(:body)
    end
  end
end
