class ImagesController < ApplicationController
  before_action :authenticate_user!

  def index
    render :index
  end

  def new
    render :new
  end

  def create
    @image = Image.create(image_params)
    if @image.valid?
      redirect_to image_path(@image)
    else
      flash[:errors] = @image.errors.full_messages
      redirect_to new_movie_path(@image)
    end
  end

  private

  def image_params
    params.require(:image).permit(:caption, :user_id, :image)
  end


end