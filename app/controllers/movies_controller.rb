class MoviesController < ApplicationController
  def index
    @movies = Movie.order(:name)
  end
end