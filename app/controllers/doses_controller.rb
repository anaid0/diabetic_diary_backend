class DosesController < ApplicationController
  # GET /doses
  # GET /doses.json
  def index
    @doses = Dose.all

    render json: @doses
  end

  # GET /doses/1
  # GET /doses/1.json
  def show
    @dose = Dose.find(params[:id])

    render json: @dose
  end

  # POST /doses
  # POST /doses.json
  def create
    @dose = Dose.new(params[:dose])

    if @dose.save
      render json: @dose, status: :created, location: @dose
    else
      render json: @dose.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /doses/1
  # PATCH/PUT /doses/1.json
  def update
    @dose = Dose.find(params[:id])

    if @dose.update(params[:dose])
      head :no_content
    else
      render json: @dose.errors, status: :unprocessable_entity
    end
  end

  # DELETE /doses/1
  # DELETE /doses/1.json
  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy

    head :no_content
  end
end
