class TimelogsController < ApplicationController
  before_action :set_timelog, only: %i[ show edit update destroy ]

  # GET /timelogs or /timelogs.json
  def index
    @timelogs = Timelog.all
  end

  # GET /timelogs/1 or /timelogs/1.json
  def show
  end

  # GET /timelogs/new
  def new
    @timelog = Timelog.new
  end

  # GET /timelogs/1/edit
  def edit
  end

  # POST /timelogs or /timelogs.json
  def create
    @timelog = Timelog.new(timelog_params)

    respond_to do |format|
      if @timelog.save
        format.html { redirect_to timelog_url(@timelog), notice: "Timelog was successfully created." }
        format.json { render :show, status: :created, location: @timelog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @timelog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /timelogs/1 or /timelogs/1.json
  def update
    respond_to do |format|
      if @timelog.update(timelog_params)
        format.html { redirect_to timelog_url(@timelog), notice: "Timelog was successfully updated." }
        format.json { render :show, status: :ok, location: @timelog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @timelog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timelogs/1 or /timelogs/1.json
  def destroy
    @timelog.destroy

    respond_to do |format|
      format.html { redirect_to timelogs_url, notice: "Timelog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timelog
      @timelog = Timelog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def timelog_params
      params.require(:timelog).permit(:user_id, :activity_id, :minutes, :date)
    end
end
