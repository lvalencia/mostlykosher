class Admin::ReviewsController < AdminController
  before_action :set_admin_review, only: [:show, :edit, :update, :destroy]

  # GET /admin/reviews
  # GET /admin/reviews.json
  def index
    @admin_reviews = Review.all
  end

  # GET /admin/reviews/1
  # GET /admin/reviews/1.json
  def show
  end

  # GET /admin/reviews/new
  def new
    @admin_review = Review.new
  end

  # GET /admin/reviews/1/edit
  def edit
  end

  # POST /admin/reviews
  # POST /admin/reviews.json
  def create
    @admin_review = Review.new(admin_review_params)

    respond_to do |format|
      if @admin_review.save
        format.html { redirect_to admin_review_path(@admin_review), notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: admin_review_path(@admin_review) }
      else
        format.html { render :new }
        format.json { render json: @admin_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/reviews/1
  # PATCH/PUT /admin/reviews/1.json
  def update
    respond_to do |format|
      if @admin_review.update(admin_review_params)
        format.html { redirect_to admin_review_path(@admin_review), notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: admin_review_path(@admin_review) }
      else
        format.html { render :edit }
        format.json { render json: @admin_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/reviews/1
  # DELETE /admin/reviews/1.json
  def destroy
    @admin_review.destroy
    respond_to do |format|
      format.html { redirect_to admin_reviews_url, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_admin_review
    @admin_review = Review.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def admin_review_params
    params.fetch(:review, {}).permit(whitelisted_params)
  end

  def whitelisted_params
    %i(quote link entity ordering)
  end
end
