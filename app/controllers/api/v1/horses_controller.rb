class Api::V1::HorsesController < ApplicationController

    def index
        horses = Horse.all
        render json: HorseSerializer.new(horses)
    end
end
