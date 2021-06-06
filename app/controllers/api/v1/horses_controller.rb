class Api::V1::HorsesController < ApplicationController

    def index
        horses = Horse.all
        render json: HorseSerializer.new(horses)
    end

    def create
        owner = Owner.find_or_create_by(name: params[:owner])
        horse = Horse.new(name: params[:name], owner_id: owner.id)
        if horse.save
            render json: HorseSerializer.new(horse)
        else
            render json: { status: "error", message: horse.errors.full_messages }
        end
    end

    private 

    def horse_params
        params.require(:horse).permit(:name, :owner_id)
    end
end
