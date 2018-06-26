class PutniksController < ApplicationController
  before_action :set_putnik, only: [:show, :edit, :update, :destroy]

  # GET /putniks
  # GET /putniks.json
  def index
    @putniks = Putnik.all
  end

  # GET /putniks/1
  # GET /putniks/1.json
  def show
  end

  # GET /putniks/new
  def new
    @putnik = Putnik.new
  end

  # GET /putniks/1/edit
  def edit
  end

  # POST /putniks
  # POST /putniks.json
  def create
    @putnik = Putnik.new(putnik_params)

    respond_to do |format|
      if @putnik.save
        format.html { redirect_to @putnik, notice: 'Putnik was successfully created.' }
        format.json { render :show, status: :created, location: @putnik }
      else
        format.html { render :new }
        format.json { render json: @putnik.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /putniks/1
  # PATCH/PUT /putniks/1.json
  def update
    respond_to do |format|
      if @putnik.update(putnik_params)
        format.html { redirect_to @putnik, notice: 'Putnik was successfully updated.' }
        format.json { render :show, status: :ok, location: @putnik }
      else
        format.html { render :edit }
        format.json { render json: @putnik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /putniks/1
  # DELETE /putniks/1.json
  def destroy
    @putnik.destroy
    respond_to do |format|
      format.html { redirect_to putniks_url, notice: 'Putnik was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_putnik
      @putnik = Putnik.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def putnik_params
      params.require(:putnik).permit(:name, :phone)
    end
end
