class Api::V1::ClientsController < ApplicationController
  def index
    client = Client.find(params[:client_id]) unless params[:client_id].blank?
    render json: client
  rescue StandartError => e
    invalid_attempt e.message
  end

  def invalid_attempt(reason, status = :unprocessable_entity)
    render json:{
      success: false,
      error: reason
    }, status: status
  end
end
