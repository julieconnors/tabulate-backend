class Api::V1::ServicesController < ApplicationController

    def index
        services = Service.all
        render json: ServiceSerializer.new(services)
    end

    def create
        service = Service.new(service)
        if service.save
            render json: ServiceSerializer.new(service)
        else
            render json: { error: "Error creating training option"}
        end
    end

    private

    def service_params
        params.require(:service).permit(:label, :fee)
    end
end
