class NotesController < ApplicationController
  # GET users/1/entries/1/notes
  # GET users/1/entries/1/notes.json
  def index
    @entry = Entry.find(params["entry_id"])
    @note = @entry.note

    render json: @note
  end

  # GET /notes/1
  # GET /notes/1.json
  def show
    @note = Note.find(params[:id])

    render json: @note
  end

  # POST /notes
  # POST /notes.json
  def create
    @note = Note.new(params[:note])

    if @note.save
      render json: @note, status: :created, location: @note
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /notes/1
  # PATCH/PUT /notes/1.json
  def update
    @note = Note.find(params[:id])

    if @note.update(params[:note])
      head :no_content
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note = Note.find(params[:id])
    @note.destroy

    head :no_content
  end
end
