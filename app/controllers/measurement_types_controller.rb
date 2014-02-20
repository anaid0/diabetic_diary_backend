class MeasurementTypesController < ApplicationController
  include ActionController::MimeResponds
  # GET users/1/measurement_types
  # GET users/1/measurement_types.json
  def index
    @measurement_types = MeasurementType.all
    respond_to do |format|
      format.json { render json: @measurement_types }
    end
  end

  # GET users/1/measurement_types/1
  # GET users/1/measurement_types/1.json
  def show
    @measurement_type = MeasurementType.find(params[:id])

    respond_to do |format|
      format.json { render json: @measurement_type }
    end
  end
end