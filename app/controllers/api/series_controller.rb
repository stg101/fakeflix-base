module Api 
  class SeriesController < ApplicationController
    def index
      if params.key? "filter"        
        render json: Serie.where(status: params[:filter]), status: :ok
      else
        render json: Serie.all, status: :ok
      end     
    end
  
    def show
      serie = Serie.find(params[:id])  
      json_response = serie.to_json( 
        include: :episodes ,
        :methods => [:duration, :rented]
      )
      render json: json_response, status: :ok
    end
  end
end

