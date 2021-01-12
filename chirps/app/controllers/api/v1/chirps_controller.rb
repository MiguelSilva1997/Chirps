class Api::V1::ChirpsController < ApplicationController
  def index
    render json: { data: Chirp.order(id: :desc) }
  end

  def create
    render json: { data: Chirp.create(chirp_params) }
  end

  def update
    render json: { data: Chirp.update(params[:id], chirp_params) }
  end

  private

    def chirp_params
      params.require(:chirp).permit(:text, :id, :upvotes)
    end
end
