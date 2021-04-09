class Api::V1::TrainingOptionsController < ApplicationController

    def index
        training_options = TrainingOption.all
        render json: TrainingOptionSerializer.new(training_options)
    end
end
