class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @user = Comment.find(params[:id])
  end
end
