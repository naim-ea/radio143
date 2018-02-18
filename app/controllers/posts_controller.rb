class PostsController < ApplicationController
    before_action :authenticate_user!
    before_action :find_post, only: [:show, :destroy]

    def index
        @posts = Post.all
    end

    def show
        @comment = Comment.new
        @user = User.find(@post.user_id)
        @comments = @post.comments
    end

    def new
        @post = Post.new
    end

    def create
        post = Post.create(params[:post].permit!)
        redirect_to :back if post.persisted?
    end

    def destroy
        @post.destroy
    end

    private

    def find_post
        @post = Post.find(params[:id])
    end

end
