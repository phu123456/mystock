class DiscriptionsController < ApplicationController
  before_action :set_discription, only: [:show, :edit, :update, :destroy]

  # GET /discriptions
  # GET /discriptions.json
  def index
    @discriptions = Discription.all
  end

  # GET /discriptions/1
  # GET /discriptions/1.json
  def show
  end

  # GET /discriptions/new
  def new
    @discription = Discription.new
  end

  # GET /discriptions/1/edit
  def edit
  end

  # POST /discriptions
  # POST /discriptions.json
  def create
    @discription = Discription.new(discription_params)
    raise (discription_params).to_json

    respond_to do |format|
      if @discription.save
        format.html { redirect_to @discription, notice: 'Discription was successfully created.' }
        format.json { render :show, status: :created, location: @discription }
      else
        format.html { render :new }
        format.json { render json: @discription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discriptions/1
  # PATCH/PUT /discriptions/1.json
  def update
    respond_to do |format|
      if @discription.update(discription_params)
        format.html { redirect_to @discription, notice: 'Discription was successfully updated.' }
        format.json { render :show, status: :ok, location: @discription }
      else
        format.html { render :edit }
        format.json { render json: @discription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discriptions/1
  # DELETE /discriptions/1.json
  def destroy
    @discription.destroy
    respond_to do |format|
      format.html { redirect_to discriptions_url, notice: 'Discription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discription
      @discription = Discription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discription_params
      params.require(:discription).permit(:occur, :detail, :tyre_id, :image)
    end
end
