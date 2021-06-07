class Api::V1::UsersController < ApplicationController

    def create
        # binding.pry
        @user = User.new(user_params)
        if @user.valid?
            @token = encode_token({ user_id: @user.id })

            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
