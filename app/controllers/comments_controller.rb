class CommentsController < ApplicationController
    before_action :authenticate_user!

    def index
    end

    def new
    end

    def show;end

    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(params[:comment].permit!)
        redirect_to post_path(@post)
    end

    def destroy
        @post = Post.find params[:post_id]
        @comment = @post.comments.find params[:id]
        @comment.destroy
        redirect_to post_path(@post)
    end

end
