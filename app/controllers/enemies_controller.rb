class EnemiesController < ApplicationController
  before_action :set_enemy, only: [:show, :update, :destroy]

  # GET /enemies
  def index
    @enemies = Enemy.all

    render json: @enemies
  end

  # GET /enemies/1
  def show
    render json: @enemy
  end

  # POST /enemies
  def create
    @enemy = Enemy.new(enemy_params)

    if @enemy.save
      render json: @enemy, status: :created, location: @enemy
    else
      render json: @enemy.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /enemies/1
  def update
    if @enemy.update(enemy_params)
      render json: @enemy
    else
      render json: @enemy.errors, status: :unprocessable_entity
    end
  end

  # DELETE /enemies/1
  def destroy
    @enemy.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enemy
      @enemy = Enemy.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def enemy_params
      params.require(:enemy).permit(:name, :meta, :armor_class, :hit_points, :Speed, :STR, :STR_mod, :DEX, :DEX_mod, :CON, :CON_mod, :INT, :INT_mod, :WIS, :WIS_mod, :CHA, :CHA_mod, :Saving_Throws, :Skills, :Senses, :Languages, :level, :Traits, :Actions, :Legendary_Actions, :image_url, :user_id).merge(user_id: @user.id)
    end
end
