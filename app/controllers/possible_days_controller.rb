class PossibleDaysController < ApplicationController
  before_action :set_possible_day, only: [:show, :edit, :update, :destroy]

  # GET /possible_days
  # GET /possible_days.json
  def index
    @possible_days = PossibleDay.all
  end

  # GET /possible_days/1
  # GET /possible_days/1.json
  def show
  end

  # GET /possible_days/new
  def new
    @possible_day = PossibleDay.new
  end

  # GET /possible_days/1/edit
  def edit
  end

  # POST /possible_days
  # POST /possible_days.json
  def create
    @possible_day = PossibleDay.new(possible_day_params)

    respond_to do |format|
      if @possible_day.save
        format.html { redirect_to @possible_day, notice: 'Possible day was successfully created.' }
        format.json { render :show, status: :created, location: @possible_day }
      else
        format.html { render :new }
        format.json { render json: @possible_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /possible_days/1
  # PATCH/PUT /possible_days/1.json
  def update
    respond_to do |format|
      if @possible_day.update(possible_day_params)
        format.html { redirect_to @possible_day, notice: 'Possible day was successfully updated.' }
        format.json { render :show, status: :ok, location: @possible_day }
      else
        format.html { render :edit }
        format.json { render json: @possible_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /possible_days/1
  # DELETE /possible_days/1.json
  def destroy
    @possible_day.destroy
    respond_to do |format|
      format.html { redirect_to possible_days_url, notice: 'Possible day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_possible_day
      @possible_day = PossibleDay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def possible_day_params
      params.require(:possible_day).permit(:day, :from_date, :to_date, :from_time, :to_time, :event_id)
    end
end
