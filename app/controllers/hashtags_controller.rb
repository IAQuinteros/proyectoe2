class HashtagsController < ApplicationController
  def index
    @hashtags = Hashtag.all
  end

  def show
    @user = Hashtag.find(params[:id])
  end
end
