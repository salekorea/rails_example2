class VideosController < ApplicationController
  before_action :get_video,
    exclude: [:index, :new, :create]]
  #before_action :get_video, only: [:show, :edit, :update, :destroy]
  # view
  def index
      @videos = Video.all
  end

  def create
    @video = Video.create(video_params)
    redirect_to video_path(@video)
  end

  def new
    @video = Video.new
  end

  def edit

  end

  def show

  end

  def update

    @video.update(video_params)
    redirect_to video_path(@video)

  end

  def destroy

    @video.destroy

    redirect_to videos_path
  end


  private
  def get_video
    @video = Video.find(params[:id])
  end

  def video_params
    params.require(:video).permit(:title, :content)
  end

end
