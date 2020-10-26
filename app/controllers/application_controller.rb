class ApplicationController < ActionController::API

    before_action :authenticate

    def auth_header
        request.headers["Authorization"]
    end

    def token
        auth_header.split(" ")[1]
    end
    
    def secret
        secret = ENV['SECRET_KEY_BASE'] || Rails.application.secrets.secret_key_base
    end

    def authenticate
        if auth_header
            begin
                decoded_token = JWT.decode(token, secret)
                payload = decoded_token.first
                user_id = payload["user_id"]
                @user = User.find(user_id)
            rescue
                render json: { message: "Could not create token" }, status: :forbidden
            end
        else
            render json: { message: "Auth header does not exist" }, status: :forbidden
        end
    end

    def permssion(level)
        if @user.permission < level 
            render json: { message: "User does not have enough permission"}, status: :forbidden
        end
    end

    def create_token(payload)
        JWT.encode(payload, secret)
    end
end