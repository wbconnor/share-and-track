class ActtivitiesController < ApplicationController
  before_action :set_acttivity, only: [:show, :edit, :update, :destroy]

  # GET /acttivities
  # GET /acttivities.json
  def index
    @acttivities = Acttivity.all
  end

  # GET /acttivities/1
  # GET /acttivities/1.json
  def show
  end

  # GET /acttivities/new
  def new
    @acttivity = Acttivity.new
  end

  # GET /acttivities/1/edit
  def edit
  end

  # POST /acttivities
  # POST /acttivities.json
  def create
    @acttivity = Acttivity.new(acttivity_params)

    respond_to do |format|
      if @acttivity.save
        format.html { redirect_to @acttivity, notice: 'Acttivity was successfully created.' }
        format.json { render :show, status: :created, location: @acttivity }
      else
        format.html { render :new }
        format.json { render json: @acttivity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acttivities/1
  # PATCH/PUT /acttivities/1.json
  def update
    respond_to do |format|
      if @acttivity.update(acttivity_params)
        format.html { redirect_to @acttivity, notice: 'Acttivity was successfully updated.' }
        format.json { render :show, status: :ok, location: @acttivity }
      else
        format.html { render :edit }
        format.json { render json: @acttivity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acttivities/1
  # DELETE /acttivities/1.json
  def destroy
    @acttivity.destroy
    respond_to do |format|
      format.html { redirect_to acttivities_url, notice: 'Acttivity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acttivity
      @acttivity = Acttivity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def acttivity_params
      params.require(:acttivity).permit(:name, :quantity, :weight, :time)
    end
end
