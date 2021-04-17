class Api::V1::OwnersController < ApplicationController

    def index
        owners = Owner.all
        render json: OwnerSerializer.new(owners)
    end

    def create
        owner = Owner.new(owner_params)
        if owner.save
            render json: OwnerSerializer.new(owner)
        else
            render json: { error: "Error creating Owner"}
        end
    end

    private

    def owner_params
        params.require(:owner).permit(:name)
    end
end
