class InsulinTypesController < ApplicationController
  # GET /insulin_types
  # GET /insulin_types.json
  def index
    @insulin_types = InsulinType.all

    render json: @insulin_types
  end

  # GET /insulin_types/1
  # GET /insulin_types/1.json
  def show
    @insulin_type = InsulinType.find(params[:id])

    render json: @insulin_type
  end

  # POST /insulin_types
  # POST /insulin_types.json
  def create
    @insulin_type = InsulinType.new(params[:insulin_type])

    if @insulin_type.save
      render json: @insulin_type, status: :created, location: @insulin_type
    else
      render json: @insulin_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /insulin_types/1
  # PATCH/PUT /insulin_types/1.json
  def update
    @insulin_type = InsulinType.find(params[:id])

    if @insulin_type.update(params[:insulin_type])
      head :no_content
    else
      render json: @insulin_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /insulin_types/1
  # DELETE /insulin_types/1.json
  def destroy
    @insulin_type = InsulinType.find(params[:id])
    @insulin_type.destroy

    head :no_content
  end
end
