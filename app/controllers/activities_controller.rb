class ActivitiesController < ApplicationController
  # GET users/1/entries/1/activities
  # GET users/1/entries/1/activities.json
  def index
    @entry = Entry.find(params["entry_id"])
    @activity = @entry.activity

    render json: @activity
  end

  # GET /activities/1
  # GET /activities/1.json
  def show
    @activity = Activity.find(params[:id])

    render json: @activity
  end

  # POST /activities
  # POST /activities.json
  def create
    @activity = Activity.new(params[:activity])

    if @activity.save
      render json: @activity, status: :created, location: @activity
    else
      render json: @activity.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /activities/1
  # PATCH/PUT /activities/1.json
  def update
    @activity = Activity.find(params[:id])

    if @activity.update(params[:activity])
      head :no_content
    else
      render json: @activity.errors, status: :unprocessable_entity
    end
  end

  # DELETE /activities/1
  # DELETE /activities/1.json
  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy

    head :no_content
  end
end
