class DailiesController < ApplicationController
  before_action :set_daily, only: %i[ show edit update destroy ]

  # GET /dailies or /dailies.json
  def index
    @dailies = Daily.all
  end

  # GET /dailies/1 or /dailies/1.json
  def show
    @dailies = Daily.all
    current_user = User.find_by(id: session[:user_id])
  end

  # GET /dailies/new
  def new
    @daily = Daily.new
    @categories = Category.includes(:news_items).all
  end

  # GET /dailies/1/edit
  def edit
  end

  # POST /dailies or /dailies.json
  def create
    @daily = Daily.new(daily_params)
    @categories = Category.includes(:news_items).all

    respond_to do |format|
      if @daily.save
        format.html { redirect_to daily_url(@daily), notice: "Daily was successfully created." }
        format.json { render :show, status: :created, location: @daily }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @daily.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dailies/1 or /dailies/1.json
  def update
    respond_to do |format|
      if @daily.update(daily_params)
        format.html { redirect_to daily_url(@daily), notice: "Daily was successfully updated." }
        format.json { render :show, status: :ok, location: @daily }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @daily.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dailies/1 or /dailies/1.json
  def destroy
    @daily.destroy

    respond_to do |format|
      format.html { redirect_to dailies_url, notice: "Daily was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily
      @daily = Daily.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def daily_params
      params.require(:daily).permit(:posted_date)
    end
end
