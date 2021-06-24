class Api::V1::HorsesController < ApplicationController

    def index
        horses = Horse.all
        render json: HorseSerializer.new(horses)
    end

    def create
        user = User.find_by(id: params[:userId])
        owner = Owner.find_or_create_by(name: params[:owner])
        owner.user_id = user.id
        owner.save
        horse = Horse.new(name: params[:name], owner_id: owner.id, user_id: user.id)
        if horse.save
            render json: HorseSerializer.new(horse)
        else
            render json: { status: "error", message: horse.errors.full_messages }
        end
    end

    private 

    def horse_params
        params.require(:horse).permit(:name, :owner_id, :user_id)
    end
end
