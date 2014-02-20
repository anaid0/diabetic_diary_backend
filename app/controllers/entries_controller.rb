class EntriesController < ApplicationController
  # GET users/1/entries
  # GET users/1/entries.json
  def index
    @entries = Entry.all
    render json: @entries
  end

  # GET users/1/entries/1
  # GET users/1/entries/1.json
  def show
    @entry = Entry.find(params[:id])
    render json: @entry
  end

  # POST /entries
  # POST /entries.json
  def create
    @entry = Entry.new(params[:entry])

    if @entry.save
      render json: @entry, status: :created, location: @entry
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /entries/1
  # PATCH/PUT /entries/1.json
  def update
    @entry = Entry.find(params[:id])

    if @entry.update(params[:entry])
      head :no_content
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  # DELETE /entries/1
  # DELETE /entries/1.json
  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy

    head :no_content
  end
end
