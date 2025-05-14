class PublicationsController < ApplicationController
  def index
    @publications = Publication.all
  end

  def show
    @publication = Publication.find(params[:id])
    @comments = @publication.comments.includes(:user)

  end

end
