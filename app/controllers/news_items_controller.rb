class NewsItemsController < ApplicationController
  before_action :set_news_item, only: %i[ show edit update destroy ]

  # GET /news_items or /news_items.json
  def index
    @news_items = NewsItem.all
  end

  # GET /news_items/1 or /news_items/1.json
  def show
  end

  # GET /news_items/new
  def new
    @news_item = NewsItem.new
    @categories = Category.all
  end

  # GET /news_items/1/edit
  def edit
  end

  # POST /news_items or /news_items.json
  def create
    @news_item = NewsItem.new(news_item_params)
    @news_item.author_id = current_user.id
    @news_item.news_status = "published"
    @news_item.comment_status = "open"

    respond_to do |format|
      if @news_item.save
        format.html { redirect_to news_item_url(@news_item), notice: "News item was successfully created." }
        format.json { render :show, status: :created, location: @news_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @news_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news_items/1 or /news_items/1.json
  def update
    respond_to do |format|
      if @news_item.update(news_item_params)
        format.html { redirect_to news_item_url(@news_item), notice: "News item was successfully updated." }
        format.json { render :show, status: :ok, location: @news_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @news_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_items/1 or /news_items/1.json
  def destroy
    @news_item.destroy

    respond_to do |format|
      format.html { redirect_to news_items_url, notice: "News item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_item
      @news_item = NewsItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def news_item_params
      # params.require(:news_item).permit(:title, :news_status, :comment_status, :category_id)
      params.require(:news_item).permit(:title, :content, :news_status, :comment_status, :author_id, :category_id)
    end
end
