class NotesheetsController < ApplicationController
  before_action :set_notesheet, only: [:show, :edit, :update, :destroy]

  # GET /notesheets
  # GET /notesheets.json
  def index
    @notesheets = Notesheet.all
  end

  # GET /notesheets/1
  # GET /notesheets/1.json
  def show
  end

  # GET /notesheets/new
  def new
    @notesheet = Notesheet.new
  end

  # GET /notesheets/1/edit
  def edit
  end

  # POST /notesheets
  # POST /notesheets.json
  def create
    @notesheet = Notesheet.new(notesheet_params)
    
    respond_to do |format|
      if @notesheet.save
        if !@notesheet.notepic.url
            path = "#{@notesheet.title}-#{@notesheet.id}.txt"
            File.open(path, "w+") do |f|
              f.write(@notesheet.content)
              @notesheet.notepic = f
            end
            @notesheet.save!
        end
        format.html { redirect_to @notesheet, notice: 'Notesheet was successfully created.' }
        format.json { render :show, status: :created, location: @notesheet }
      else
        format.html { render :new }
        format.json { render json: @notesheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notesheets/1
  # PATCH/PUT /notesheets/1.json
  def update
    respond_to do |format|
      if @notesheet.update(notesheet_params)
        format.html { redirect_to @notesheet, notice: 'Notesheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @notesheet }
      else
        format.html { render :edit }
        format.json { render json: @notesheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notesheets/1
  # DELETE /notesheets/1.json
  def destroy
    @notesheet.destroy
    respond_to do |format|
      format.html { redirect_to notesheets_url, notice: 'Notesheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notesheet
      @notesheet = Notesheet.find(params[:id])

    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def notesheet_params
      params.require(:notesheet).permit(:content, :title, :course_id, :user_id, :date_created, :notepic, :notepic_cache)
    end
end
