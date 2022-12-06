class EditorsController < ApplicationController
  before_action :set_editor, only: %i[ show edit update destroy ]

  # GET /editors or /editors.json
  def index
    @editors = Editor.all
  end

  # GET /editors/1 or /editors/1.json
  def show
    @editors = Editor.all
    current_user = User.find_by(id: session[:user_id])
  end

  # GET /editors/new
  def new
    @editor = Editor.new
    @categories = Category.includes(:news_items).all
  end

  # GET /editors/1/edit
  def edit
  end

  # POST /editors or /editors.json
  def create
    @editor = Editor.new(editor_params)
    @categories = Category.includes(:news_items).all

    puts "params[:news_item_ids] = #{params[:news_item_ids]}"
    puts "editor = #{params[:editor]}"
    
    
    @postDate = ""
    1.upto(3) do |i| 
      @postDate += params[:editor]["posted_date(#{i}i)"] 
      if i < 3
        @postDate += "/"
      end
    end
    @newsItemToAdd = []
    params[:news_item_ids].each do |news_item_id|
      @newsItemToAdd << news_item_id
    end

    puts "newsItemToAdd = #{@newsItemToAdd}"

    Daily.create!(posted_date: @posted_date.to_s)
    @dailyIdToAdd = Daily.last.id
    @newsItemToAdd.each do |news_item_id|
      NewsItemDaily.create!(daily_id: @dailyIdToAdd, news_item_id: news_item_id)
    end

    respond_to do |format|
      format.html { redirect_to dailies_url, notice: "Today's news items were successfully selected." }
      # if @editor.save
      #   format.html { redirect_to editor_url(@editor), notice: "Editor was successfully created." }
      #   format.json { render :show, status: :created, location: @editor }
      # else
      #   format.html { render :new, status: :unprocessable_entity }
      #   format.json { render json: @editor.errors, status: :unprocessable_entity }
      # end
    end
  end

  # PATCH/PUT /editors/1 or /editors/1.json
  def update
    respond_to do |format|
      if @editor.update(editor_params)
        format.html { redirect_to editor_url(@editor), notice: "Editor was successfully updated." }
        format.json { render :show, status: :ok, location: @editor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @editor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /editors/1 or /editors/1.json
  def destroy
    @editor.destroy

    respond_to do |format|
      format.html { redirect_to editors_url, notice: "Editor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_editor
      @editor = Editor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def editor_params
      # params.fetch(:editor, {})
      params.require(:editor).permit(:news_item_ids => [])
    end
end
