class Api::V1::ClientsController < ApplicationController
  def index
    clients = Client.all
    render json: clients
  end

  def show
    client = Client.find(params[:id])
    render json: client
  end


  def invalid_attempt(reason, status = :unprocessable_entity)
    render json:{
      success: false,
      error: reason
    }, status: status
  end
end
