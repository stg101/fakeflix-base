module Api 
  class RentalsController < ApplicationController
    def movies
      render json: Rental.all, status: :ok

      # Rental.create (
      #   id	1,
      #   paid_price	354,
      #   rentable_type	"Movie",
      #   rentable_id	1,
      #   created_at	"2019-04-08T23:22:50.915Z",
      #   updated_at	"2019-04-08T23:22:50.915Z"

      # )
    end
  end
end


