class MoviesController < ApplicationController

  def index
    @movies = Movie.includes(:genres).all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      flash[:notice] = 'Movie successfully created'
      redirect_to root_path
    else
      flash.now[:alert] = 'Error creating movie'
      render :new
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :blurb, :date_released,
    :country_of_origin, :showing_start, :showing_end, genre_ids: [])
  end
end