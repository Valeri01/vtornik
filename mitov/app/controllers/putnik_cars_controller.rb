class PutnikCarsController < ApplicationController
  before_action :set_putnik_car, only: [:show, :edit, :update, :destroy]

  # GET /putnik_cars
  # GET /putnik_cars.json
  def index
    @putnik_cars = PutnikCar.all
  end

  # GET /putnik_cars/1
  # GET /putnik_cars/1.json
  def show
  end

  # GET /putnik_cars/new
  def new
    @putnik_car = PutnikCar.new
  end

  # GET /putnik_cars/1/edit
  def edit
  end

  # POST /putnik_cars
  # POST /putnik_cars.json
  def create
    @putnik_car = PutnikCar.new(putnik_car_params)

    respond_to do |format|
      if @putnik_car.save
        format.html { redirect_to @putnik_car, notice: 'Putnik car was successfully created.' }
        format.json { render :show, status: :created, location: @putnik_car }
      else
        format.html { render :new }
        format.json { render json: @putnik_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /putnik_cars/1
  # PATCH/PUT /putnik_cars/1.json
  def update
    respond_to do |format|
      if @putnik_car.update(putnik_car_params)
        format.html { redirect_to @putnik_car, notice: 'Putnik car was successfully updated.' }
        format.json { render :show, status: :ok, location: @putnik_car }
      else
        format.html { render :edit }
        format.json { render json: @putnik_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /putnik_cars/1
  # DELETE /putnik_cars/1.json
  def destroy
    @putnik_car.destroy
    respond_to do |format|
      format.html { redirect_to putnik_cars_url, notice: 'Putnik car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_putnik_car
      @putnik_car = PutnikCar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def putnik_car_params
      params.require(:putnik_car).permit(:putnic_id, :car_id)
    end
end
