class Api::V1::OwnersController < ApplicationController

    def index
        owners = Owner.all
        render json: OwnerSerializer.new(owners)
    end
end
