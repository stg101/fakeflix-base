module Api 
  class EpisodesController < ApplicationController
  
    def show
      render json: Episode.find(params[:id])
    end  

    def playback
      episode = Episode.find(params[:id])
      episode.write_attribute(:playback, params[:progress])
      render json: { message: "updated to #{episode.playback}" }, status: :ok
    end

  end
end


