class FollowersController < ApplicationController
  def index
    @followers = Follower.all
  end

  def show
    @follower = Follower.find(params[:id])
  end
end
