class SkiesController < ApplicationController

  before_action :move_to_index, except: [:index, :show]

  def index
    @skies = Sky.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end

  def new
  end

  def create
    Sky.create(image: sky_params[:image], text: sky_params[:text], user_id: current_user.id)
  end

  def destroy
    sky = Sky.find(params[:id])
    sky.destroy if sky.user_id == current_user.id
  end

  def edit
    @sky = Sky.find(params[:id])
  end

  def update
    sky = Sky.find(params[:id])
    sky.update(image: params[:image],text: params[:text])
  end

  def show
    @sky = Sky.find(params[:id])
    @reviews = @sky.reviews.includes(:user)
  end

  private
  def sky_params
    params.permit(:image, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
