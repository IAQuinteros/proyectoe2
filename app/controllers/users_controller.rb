class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @publications = @user.publications
  end

  def new
     @user = User.new
  end

  def create
      @user = User.new(user_params)
      if @user.save
          redirect_to @user, notice: 'Usuario creado con exito'
      else
          render :new, status: :unprocessable_entity
      end
  end

  def edit
      @user = User.find(params[:id])
  end

  def update
      @user = User.find(params[:id])
      if @user.update(user_params)
          redirect_to @user, notice: "Usuario actualizado correctamente."
      else
          render :edit, status: :unprocessable_entity
      end
  end

  private

  def user_params
      params.require(:user).permit(:name, :username, :email, :image)
  end
end
