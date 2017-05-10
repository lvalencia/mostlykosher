class Admin::FansController < AdminController
  before_action :set_admin_fan, only: [:show, :edit, :update, :destroy]

  # GET /admin/fans
  # GET /admin/fans.json
  def index
    @admin_fans = Fan.all.order(created_at: :desc)
  end

  # GET /admin/fans/1
  # GET /admin/fans/1.json
  def show
  end

  # GET /admin/fans/new
  def new
    @admin_fan = Fan.new
  end

  # GET /admin/fans/1/edit
  def edit
  end

  # POST /admin/fans
  # POST /admin/fans.json
  def create
    @admin_fan = Fan.new(admin_fan_params)

    respond_to do |format|
      if @admin_fan.save
        format.html { redirect_to @admin_fan, notice: 'Fan was successfully created.' }
        format.json { render :show, status: :created, location: @admin_fan }
      else
        format.html { render :new }
        format.json { render json: @admin_fan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/fans/1
  # PATCH/PUT /admin/fans/1.json
  def update
    respond_to do |format|
      if @admin_fan.update(admin_fan_params)
        format.html { redirect_to @admin_fan, notice: 'Fan was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_fan }
      else
        format.html { render :edit }
        format.json { render json: @admin_fan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/fans/1
  # DELETE /admin/fans/1.json
  def destroy
    @admin_fan.destroy
    respond_to do |format|
      format.html { redirect_to admin_fans_url, notice: 'Fan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_fan
      @admin_fan = Fan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_fan_params
      params.fetch(:admin_fan, {})
    end
end
