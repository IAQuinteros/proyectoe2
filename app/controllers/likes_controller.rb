class LikesController < ApplicationController
  def index
    @likes = Like.all
  end

  def show
    @user = Like.find(params[:id])
  end
end
