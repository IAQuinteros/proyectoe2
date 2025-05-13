class PublicationsController < ApplicationController
  def index
    @publications = Publication.all
  end

  def show
    @user = Publication.find(params[:id])
  end
end
