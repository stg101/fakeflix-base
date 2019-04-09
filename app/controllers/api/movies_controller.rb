module Api 
  class MoviesController < ApplicationController
    def index
      if params.key? "filter"        
        render json: Movie.where(status: params[:filter]), status: :ok
      else
        render json: Movie.all, status: :ok
      end    
    end
  
    def show
      render json: Movie.find(params[:id]).to_json(:methods => :rented)
    end

    def playback
      movie = Movie.find(params[:id])
      movie.write_attribute(:playback, params[:progress])
      render json: { message: "updated to #{movie.playback}" }, status: :ok
    end

  end
end


