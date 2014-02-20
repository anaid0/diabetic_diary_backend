class InsulinTypesController < ApplicationController
  include ActionController::MimeResponds
  # GET users/1/insulin_types
  # GET users/1/insulin_types.json
  def index
    @insulin_types = InsulinType.all
    respond_to do |format|
      format.json { render json: @insulin_types }
    end
  end

  # GET users/1/insulin_types/1
  # GET users/1/insulin_types/1.json
  def show
    @insulin_type = InsulinType.find(params[:id])

    respond_to do |format|
      format.json { render json: @insulin_type }
    end
    end
end
