class MeasurementsController < ApplicationController
  # GET /measurements
  # GET /measurements.json
  def index
    @entry = Entry.find(params["entry_id"])
    @measurement = @entry.measurement

    render json: @measurement
  end

  # GET /measurements/1
  # GET /measurements/1.json
  def show
    @measurement = Measurement.find(params[:id])

    render json: @measurement
  end

  # POST /measurements
  # POST /measurements.json
  def create
    @measurement = Measurement.new(params[:measurement])

    if @measurement.save
      render json: @measurement, status: :created, location: @measurement
    else
      render json: @measurement.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /measurements/1
  # PATCH/PUT /measurements/1.json
  def update
    @measurement = Measurement.find(params[:id])

    if @measurement.update(params[:measurement])
      head :no_content
    else
      render json: @measurement.errors, status: :unprocessable_entity
    end
  end

  # DELETE /measurements/1
  # DELETE /measurements/1.json
  def destroy
    @measurement = Measurement.find(params[:id])
    @measurement.destroy

    head :no_content
  end
end
