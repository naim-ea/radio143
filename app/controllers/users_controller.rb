class UsersController < ApplicationController

    before_action :find_user, only: [:show, :destroy]

    def show;end
  
    private
  
    def find_user
        @user = User.find(params[:id])
        @posts = @user.posts
    end

end