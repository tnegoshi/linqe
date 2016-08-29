class CommentsController < ApplicationController

    before_action :set_comment, only: [:show, :edit, :update, :destroy]
    before_action :authorize_user, only: [:new, :create]

    def index
      @comments = Comment.all
    end

    def new
      @comment = Comment.new
    end

    def show
    end

    def create
      comment = current_user.comments.build(comment_params)
      if comment.save
        redirect_to :back, notice: 'Comment created.'
      else
        redirect_to :back, notice: 'Please enter a comment and try again.'
      end
    end

    def edit
    end

    def update
      @comment.update(comment_params)
    end

    def destroy
      @comment.destroy
      redirect_to :back, notice: 'Comment deleted.'
    end

    private

    def comment_params
      params.require(:comment).permit(:content, :submitter_id, :commenter_id, :linqe_id)
    end

    def set_comment
      @comment = Comment.find(params[:id])
    end
end
