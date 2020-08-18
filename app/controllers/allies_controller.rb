class AlliesController < ApplicationController
  before_action :set_ally, only: [:show, :update, :destroy]

  # GET /allies
  def index
    @allies = Ally.all

    render json: @allies
  end

  # GET /allies/1
  def show
    render json: @ally
  end

  # POST /allies
  def create
    @ally = Ally.new(ally_params)

    if @ally.save
      render json: @ally, status: :created, location: @ally
    else
      render json: @ally.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /allies/1
  def update
    if @ally.update(ally_params)
      render json: @ally
    else
      render json: @ally.errors, status: :unprocessable_entity
    end
  end

  # DELETE /allies/1
  def destroy
    @ally.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ally
      @ally = Ally.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ally_params
      params.require(:ally).permit(:player_id, :user_id).merge(user_id: @user.id)
    end
end
