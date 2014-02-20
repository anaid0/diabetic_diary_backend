class ActivityTypesController < ApplicationController
  include ActionController::MimeResponds
  # GET users/1/activity_types
  # GET users/1/activity_types.json
  def index
    @activity_types = ActivityType.all
    respond_to do |format|
      format.json { render json: @activity_types }
    end
  end

  # GET users/1/activity_types/1
  # GET users/1/activity_types/1.json
  def show
    @activity_type = ActivityType.find(params[:id])

    respond_to do |format|
      format.json { render json: @activity_type }
    end
  end

end
