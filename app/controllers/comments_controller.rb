class CommentsController < ApplicationController
    before_action :authenticate_user!

    def index
    end

    def new
    end

    def create
        comment = Comment.create(params[:comment].permit!)
        redirect_to :back if comment.persisted?
    end

end
