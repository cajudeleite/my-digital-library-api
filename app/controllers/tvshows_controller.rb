class TvshowsController < ApplicationController
  before_action :set_tvshow, only: [:show, :update, :destroy]

  # GET /tvshows
  def index
    @tvshows = Tvshow.all

    render json: @tvshows
  end

  # GET /tvshows/1
  def show
    render json: @tvshow
  end

  # POST /tvshows
  def create
    @tvshow = Tvshow.new(tvshow_params)

    if @tvshow.save
      render json: @tvshow, status: :created, location: @tvshow
    else
      render json: @tvshow.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tvshows/1
  def update
    if @tvshow.update(tvshow_params)
      render json: @tvshow
    else
      render json: @tvshow.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tvshows/1
  def destroy
    @tvshow.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tvshow
      @tvshow = Tvshow.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tvshow_params
      params.require(:tvshow).permit(:title, :season, :overview, :tvshow_id, :poster_path)
    end
end
