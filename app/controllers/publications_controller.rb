class PublicationsController < ApplicationController
  def index
    @publications = Publication.all
  end

  def show
    @publication = Publication.find(params[:id])
    @comments = @publication.comments.includes(:user)
  end

    def new
     @publication = Publication.new
  end

  def create
      @publication = Publication.new(publication_params)
      if @publication.save
          redirect_to @publication, notice: 'Publicacion creada con exito'
      else
          render :new, status: :unprocessable_entity
      end
  end

  def edit
      @user = Publication.find(params[:id])
  end

  def update
      @publication = Publication.find(params[:id])
      if @publication.update(publication_params)
          redirect_to @publication, notice: "Publicacion actualizada correctamente."
      else
          render :edit, status: :unprocessable_entity
      end
  end

  private

  def publication_params
      params.require(:publication).permit(:publication_image, :description, :user_id,)
  end

end
