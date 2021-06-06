class Api::V1::UsersController < ApplicationController

    def create
        binding.pry
        @user = User.new(user_params)
        if @user.valid?
            
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
