class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy, :recycle]
  before_action :authenticate_user!
  # GET /notes
  # GET /notes.json
  def index
    @nonrecycled_notes = Note.where(user: current_user, recycled: false)
    @nonrecycled_notes = @nonrecycled_notes.where("title like ?", "%#{params[:note_search]}%") if params[:note_search]
  end

  # GET /notes/1
  # GET /notes/1.json
  def show
  end

  # GET /notes/new
  def new
    @note = Note.new
  end

  # GET /notes/1/edit
  def edit
  end

  # POST /notes
  # POST /notes.json
  def create
    @note = Note.new(note_params)
    @note.user = current_user
    if(@note.title == "" || @note.title == " ")
      @note.title = "Note"
    end
    respond_to do |format|
      if @note.save
        format.html { redirect_to @note, notice: 'Note was successfully created.' }
        format.json { render :show, status: :created, location: @note }
        format.js 
      else
        format.html { render :new }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  def recyclebin
    @recycled_notes = Note.where(user: current_user, recycled: true)
  end

  def restore
    @note.recycled = false
    respond_to do |format|
      if @note.save
        format.html { redirect_to @note, notice: 'Note was successfully updated.' }
        format.json { render :show, status: :ok, location: @note }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  def recycle
    @note.recycled = true
    respond_to do |format|
      if (@note.save)
        format.html { redirect_to @note, notice: 'Note was successfully updated.' }
        format.json { render :show, status: :ok, location: @note }
        format.js { }
      else
        format.html { render :edit }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  def clean
    notes = Note.where(user: current_user, recycled: true)
    notes.destroy_all
    redirect_to notes_path, notice: 'Recycling bin was successfully emptied.'
 end

  # PATCH/PUT /notes/1
  # PATCH/PUT /notes/1.json
  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to @note, notice: 'Note was successfully updated.' }
        format.json { render :show, status: :ok, location: @note }
      else
        format.html { render :edit }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note.destroy
    respond_to do |format|
      format.html { redirect_to notes_url, notice: 'Note was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      params.require(:note).permit(:title, :description, :content, :bodycolor_id, images: [])
    end
end
