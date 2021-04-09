class Api::V1::TrainingOptionsController < ApplicationController

    def index
        training_options = TrainingOption.all
        render json: training_options
    end
end
