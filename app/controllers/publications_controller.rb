class PublicationsController < ApplicationController
  def index
    @publications = Publication.all
  end

  def show
    @publication = Publication.find(params[:id])
    @comments = @publication.comments.includes(:users)

  end

end
