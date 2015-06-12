class MoviesController < ApplicationController
  def index
    @movie = Movie.upcoming
  end

  def show
    @movies = Movie.find(params[:id])
  end

  def edit
    @movies = Movie.find(params[:id])   
  end

  def update
    @movies = Movie.find(params[:id])          
    @movies.update(movie_params)
    redirect_to @movies
  end

  def new
    @movies = Movie.new
  end

  def create
      @movies = Movie.new(movie_params)
       @movies.save
        format.html { redirect_to @movies }
        format.js {}
  end


  def destroy
    @movies = Movie.find(params[:id])
    @movies.destroy
    redirect_to movies_url
  end

  private
  def movie_params
    params.require(:movie).
    permit(:name, :description, :created_at, :updated_at, :total_gross,:image_file, :capacity)
  end
end

