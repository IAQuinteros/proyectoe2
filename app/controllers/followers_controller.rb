class FollowersController < ApplicationController
  def index
    @followers = Follower.all
  end

  def show
    @user = Follower.find(params[:id])
  end
end
