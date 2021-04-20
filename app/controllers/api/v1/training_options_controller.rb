class Api::V1::TrainingOptionsController < ApplicationController

    def index
        training_options = TrainingOption.all
        render json: TrainingOptionSerializer.new(training_options)
    end

    def create
        training_option = TrainingOption.new(training_option_params)
        if training_option.save
            render json: TrainingOptionSerializer.new(training_option)
        else
            render json: { error: "Error creating training option"}
        end
    end

    private

    def training_option_params
        params.require(:training_option).permit(:label, :fee)
    end
end
