class ActivityTypesController < ApplicationController
  # GET /activity_types
  # GET /activity_types.json
  def index
    @activity_types = ActivityType.all

    render json: @activity_types
  end

  # GET /activity_types/1
  # GET /activity_types/1.json
  def show
    @activity_type = ActivityType.find(params[:id])

    render json: @activity_type
  end

  # POST /activity_types
  # POST /activity_types.json
  def create
    @activity_type = ActivityType.new(params[:activity_type])

    if @activity_type.save
      render json: @activity_type, status: :created, location: @activity_type
    else
      render json: @activity_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /activity_types/1
  # PATCH/PUT /activity_types/1.json
  def update
    @activity_type = ActivityType.find(params[:id])

    if @activity_type.update(params[:activity_type])
      head :no_content
    else
      render json: @activity_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /activity_types/1
  # DELETE /activity_types/1.json
  def destroy
    @activity_type = ActivityType.find(params[:id])
    @activity_type.destroy

    head :no_content
  end
end
