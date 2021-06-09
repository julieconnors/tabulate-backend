class Api::V1::UsersController < ApplicationController

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            @token = encode_token({ user_id: @user.id })

            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
            response = {
                error: "Invalid credentials"
            }
        end
    end

    def auth
        binding.pry
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            @token = encode_token({ user_id: @user.id })

            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :accepted
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
