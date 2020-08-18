class RotationsController < ApplicationController
  before_action :set_rotation, only: [:show, :update, :destroy]

  # GET /rotations
  def index
    @rotations = Rotation.where(user_id: @user.id)

    render json: @rotations
  end

  # GET /rotations/1
  def show
    render json: @rotation
  end

  # POST /rotations
  def create
    @rotation = Rotation.new(rotation_params)

    if @rotation.save
      render json: @rotation, status: :created, location: @rotation
    else
      render json: @rotation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rotations/1
  def update
    if @rotation.update(rotation_params)
      render json: @rotation
    else
      render json: @rotation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rotations/1
  def destroy
    @rotation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rotation
      @rotation = Rotation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rotation_params
      params.require(:rotation).permit(:name, :user_id).merge(user_id: @user.id)
    end
end
