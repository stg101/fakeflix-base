module Api 
  class RentalsController < ApplicationController

    def index
      render json: Rental.all, status: :ok  
    end

    def show
      render json: Movie.find(params[:id]), status: :ok
    end
  
    def rent_movie
      movie = Movie.find(params[:id])
      movie.rentals.create(
        paid_price: movie.price
      )
      render json: { message: "#{movie.title} has been rented" }, status: :created
    end

    def rent_serie
      serie = Serie.find(params[:id])
      serie.rentals.create(
        paid_price: serie.price
      )
      render json: { message: "#{movie.title} has been rented" }, status: :created
    end

  end
end


