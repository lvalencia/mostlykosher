class Admin::PressEntriesController < AdminController
  before_action :set_admin_press_entry, only: [:show, :edit, :update, :destroy]

  # GET /admin/press_entries
  # GET /admin/press_entries.json
  def index
    @press_entries = PressEntry.all
  end

  # GET /admin/press_entries/1
  # GET /admin/press_entries/1.json
  def show
  end

  # GET /admin/press_entries/new
  def new
    @press_entry = PressEntry.new
  end

  # GET /admin/press_entries/1/edit
  def edit
  end

  # POST /admin/press_entries
  # POST /admin/press_entries.json
  def create
    @press_entry = PressEntry.new(admin_press_entry_params)

    respond_to do |format|
      if @press_entry.save
        format.html { redirect_to admin_press_entry_path(@press_entry), notice: 'Press entry was successfully created.' }
        format.json { render :show, status: :created, location: admin_press_entry_path(@press_entry) }
      else
        format.html { render :new }
        format.json { render json: @press_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/press_entries/1
  # PATCH/PUT /admin/press_entries/1.json
  def update
    respond_to do |format|
      if @press_entry.update(admin_press_entry_params)
        format.html { redirect_to admin_press_entry_path(@press_entry), notice: 'Press entry was successfully updated.' }
        format.json { render :show, status: :ok, location: admin_press_entry_path(@press_entry) }
      else
        format.html { render :edit }
        format.json { render json: @press_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/press_entries/1
  # DELETE /admin/press_entries/1.json
  def destroy
    @press_entry.destroy
    respond_to do |format|
      format.html { redirect_to admin_press_entries_url, notice: 'Press entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_press_entry
      @press_entry = PressEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_press_entry_params
      params.fetch(:admin_press_entry, {})
    end
end
