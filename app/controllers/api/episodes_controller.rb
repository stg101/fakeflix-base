module Api 
  class EpisodesController < ApplicationController
  
    def show
      render json: Episode.find(params[:id])
    end  
  end
end


