class SelectedTimesController < ApplicationController
  before_action :set_selected_time, only: [:show, :edit, :update, :destroy]

  # GET /selected_times
  # GET /selected_times.json
  def index
    @selected_times = SelectedTime.all
  end

  # GET /selected_times/1
  # GET /selected_times/1.json
  def show
  end

  # GET /selected_times/new
  def new
    @selected_time = SelectedTime.new
  end

  # GET /selected_times/1/edit
  def edit
  end

  # POST /selected_times
  # POST /selected_times.json
  def create
    @selected_time = SelectedTime.new(selected_time_params)

    respond_to do |format|
      if @selected_time.save
        format.html { redirect_to @selected_time, notice: 'Selected time was successfully created.' }
        format.json { render :show, status: :created, location: @selected_time }
      else
        format.html { render :new }
        format.json { render json: @selected_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /selected_times/1
  # PATCH/PUT /selected_times/1.json
  def update
    respond_to do |format|
      if @selected_time.update(selected_time_params)
        format.html { redirect_to @selected_time, notice: 'Selected time was successfully updated.' }
        format.json { render :show, status: :ok, location: @selected_time }
      else
        format.html { render :edit }
        format.json { render json: @selected_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selected_times/1
  # DELETE /selected_times/1.json
  def destroy
    @selected_time.destroy
    respond_to do |format|
      format.html { redirect_to selected_times_url, notice: 'Selected time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selected_time
      @selected_time = SelectedTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def selected_time_params
      params.require(:selected_time).permit(:student_id, :event_id, :from_date, :to_date, :from_time, :to_time, :cell_status)
    end
end
