class PostsController < ApplicationController
    before_action :authenticate_user!
    before_action :find_post, only: [:show, :destroy]

    def index
        @posts = Post.all
    end

    def show
        @comment = Comment.new
        @comments = Comment.where("post_id" => @post.id)
    end

    def new
        @post = Post.new
    end

    def create
        post = Post.create(params[:post].permit!)
        redirect_to root_path if post.persisted?
    end

    def destroy
        @post.destroy
    end

    private

    def find_post
        @post = Post.find(params[:id])
        user_id = @post.user_id
        @user = User.find(user_id)
    end

end
