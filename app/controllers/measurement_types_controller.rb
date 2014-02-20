class MeasurementTypesController < ApplicationController
  # GET /measurement_types
  # GET /measurement_types.json
  def index
    @measurement_types = MeasurementType.all

    render json: @measurement_types
  end

  # GET /measurement_types/1
  # GET /measurement_types/1.json
  def show
    @measurement_type = MeasurementType.find(params[:id])

    render json: @measurement_type
  end

  # POST /measurement_types
  # POST /measurement_types.json
  def create
    @measurement_type = MeasurementType.new(params[:measurement_type])

    if @measurement_type.save
      render json: @measurement_type, status: :created, location: @measurement_type
    else
      render json: @measurement_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /measurement_types/1
  # PATCH/PUT /measurement_types/1.json
  def update
    @measurement_type = MeasurementType.find(params[:id])

    if @measurement_type.update(params[:measurement_type])
      head :no_content
    else
      render json: @measurement_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /measurement_types/1
  # DELETE /measurement_types/1.json
  def destroy
    @measurement_type = MeasurementType.find(params[:id])
    @measurement_type.destroy

    head :no_content
  end
end
