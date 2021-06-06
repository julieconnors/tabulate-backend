class ApplicationController < ActionController::API

    def encode_token(payload)
        JWT.encode(payload, Figaro.env.stripe_api_key)
    end

    def decoded_token(token)
        JWT.decode(token, Figaro.env.stripe_api_key)[0]
    end
end
