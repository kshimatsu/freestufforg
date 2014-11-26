class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  locations = ['Wan Chai', 'Central', 'Causeway Bay', 'Tsim Sha Tsui', 'Stanley']


  def confirm_posting
    @item = Item.find(params[:id])
    @item.confirm_posting = true
    @item.save
    redirect_to root_path
  end

  def latest
    @latest_item = Item.last
  end
  # GET /items
  # GET /items.json
  def index
    @items = Item.order("expiry_date").where.not(expiry_date: nil).where("expiry_date > ?", Date.today).where(confirm_posting: true)
    # @items.each do |item|
    #   puts time_ago_in_words(item.expiry_date)
    # end
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    # binding.pry
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.js   {}
        format.json { render json: @item, status: :created, location: @item }
      else
        format.html { render action: :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:title, :description, :location, :expiry_date, :lister_email, :lister_tel, :sms_notify)
    end



end



