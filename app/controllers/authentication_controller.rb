class AuthenticationController < ApplicationController
    skip_before_action :authenticate, only: [:login]

    def login
      @user = User.find_by(username: params[:username])
      if @user
        if @user.authenticate(params[:password])
          payload = { user_id: @user.id }
          secret = ENV['SECRET_KEY_BASE'] || Rails.application.secrets.secret_key_base
          token = create_token(payload)
          render json: 
          { 
            username: @user.username, 
            name: @user.name, 
            notes: @user.notes, 
            players: @user.players, 
            npcs: @user.npcs, 
            regions: @user.regions, 
            rotations: @user.rotations, 
            allies: @user.allies,
            enemies: @user.enemies,
            token: token 
          }
        else
          render json: { message: "Please try again!!!" }
        end
      else
        render json: { message: "Please try again" }
      end
    end
end