class GreasesController < ApplicationController
  before_action :set_grease, only: [:show, :edit, :update, :destroy]

  # GET /greases
  # GET /greases.json
  def index
    @greases = Grease.all
  end

  # GET /greases/1
  # GET /greases/1.json
  def show
  end

  # GET /greases/new
  def new
    @grease = Grease.new
  end

  # GET /greases/1/edit
  def edit
  end

  def repaired
    @current_truck = Grease.find(params[:current_id])
    @current_truck.update_attribute(:updated_at, Time.now.strftime("%F"))
  end

  # POST /greases
  # POST /greases.json
  def create
    @grease = Grease.new(grease_params)

    respond_to do |format|
      if @grease.save
        format.html { redirect_to @grease, notice: 'Grease was successfully created.' }
        format.json { render :show, status: :created, location: @grease }
      else
        format.html { render :new }
        format.json { render json: @grease.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /greases/1
  # PATCH/PUT /greases/1.json
  def update
    respond_to do |format|
      if @grease.update(grease_params)
        format.html { redirect_to @grease, notice: 'Grease was successfully updated.' }
        format.json { render :show, status: :ok, location: @grease }
      else
        format.html { render :edit }
        format.json { render json: @grease.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /greases/1
  # DELETE /greases/1.json
  def destroy
    @grease.destroy
    respond_to do |format|
      format.html { redirect_to greases_url, notice: 'Grease was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grease
      @grease = Grease.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grease_params
      params.require(:grease).permit(:truck_id)
    end
end
