class Api::V1::RidesController < ApplicationController

    def index
        rides = Ride.all
        render json: RideSerializer.new(rides)
    end

    private

    def ride_params
        params.require(:ride).permit(:date, :horse_id, :training_option_id)
    end
end
