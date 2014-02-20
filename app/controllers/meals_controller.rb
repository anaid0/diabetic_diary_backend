class MealsController < ApplicationController
  # GET users/1/entries/1/meals
  # GET users/1/entries/1/meals.json
  def index
    @entry = Entry.find(params["entry_id"])
    @meal = @entry.meal

    render json: @meal
  end

  # GET /meals/1
  # GET /meals/1.json
  def show
    @meal = Meal.find(params[:id])

    render json: @meal
  end

  # POST /meals
  # POST /meals.json
  def create
    @meal = Meal.new(params[:meal])

    if @meal.save
      render json: @meal, status: :created, location: @meal
    else
      render json: @meal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /meals/1
  # PATCH/PUT /meals/1.json
  def update
    @meal = Meal.find(params[:id])

    if @meal.update(params[:meal])
      head :no_content
    else
      render json: @meal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /meals/1
  # DELETE /meals/1.json
  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy

    head :no_content
  end
end
