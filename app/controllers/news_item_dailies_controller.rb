class NewsItemDailiesController < ApplicationController
  before_action :set_news_item_daily, only: %i[ show edit update destroy ]

  # GET /news_item_dailies or /news_item_dailies.json
  def index
    @news_item_dailies = NewsItemDaily.all
  end

  # GET /news_item_dailies/1 or /news_item_dailies/1.json
  def show
    @news_item_daily = NewsItemDaily.all
    current_user = User.find_by(id: session[:user_id])    
  end

  # GET /news_item_dailies/new
  def new
    @news_item_daily = NewsItemDaily.new
    @categories = Category.includes(:news_items).all  
  end

  # GET /news_item_dailies/1/edit
  def edit
  end

  # POST /news_item_dailies or /news_item_dailies.json
  def create
    @news_item_daily = NewsItemDaily.new(news_item_daily_params)
    @categories = Category.includes(:news_items).all

    puts "params[:news_item_ids] = #{params[:news_item_ids]}"

    respond_to do |format|
      if @news_item_daily.save
        format.html { redirect_to news_item_daily_url(@news_item_daily), notice: "News item daily was successfully created." }
        format.json { render :show, status: :created, location: @news_item_daily }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @news_item_daily.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news_item_dailies/1 or /news_item_dailies/1.json
  def update
    respond_to do |format|
      if @news_item_daily.update(news_item_daily_params)
        format.html { redirect_to news_item_daily_url(@news_item_daily), notice: "News item daily was successfully updated." }
        format.json { render :show, status: :ok, location: @news_item_daily }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @news_item_daily.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_item_dailies/1 or /news_item_dailies/1.json
  def destroy
    @news_item_daily.destroy

    respond_to do |format|
      format.html { redirect_to news_item_dailies_url, notice: "News item daily was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_item_daily
      @news_item_daily = NewsItemDaily.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def news_item_daily_params
      params.require(:news_item_daily).permit(:news_item_id, :daily_id)
    end
end
