class ScheduleTakeKeepsController < ApplicationController
  before_action :set_schedule_take_keep, only: %i[ show edit update destroy ]

  # GET /schedule_take_keeps or /schedule_take_keeps.json
  def index
    @schedule_take_keeps = ScheduleTakeKeep.all.order(:date)
  end

  # GET /schedule_take_keeps/1 or /schedule_take_keeps/1.json
  def show
  end

  # GET /schedule_take_keeps/new
  def new
    @schedule_take_keep = ScheduleTakeKeep.new
  end

  # GET /schedule_take_keeps/1/edit
  def edit
  end

  # POST /schedule_take_keeps or /schedule_take_keeps.json
  def create
    @schedule_take_keep = ScheduleTakeKeep.new(schedule_take_keep_params)

    respond_to do |format|
      if @schedule_take_keep.save
        format.html { redirect_to schedule_take_keep_url(@schedule_take_keep), notice: "Schedule take keep was successfully created." }
        format.json { render :show, status: :created, location: @schedule_take_keep }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @schedule_take_keep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedule_take_keeps/1 or /schedule_take_keeps/1.json
  def update
    respond_to do |format|
      if @schedule_take_keep.update(schedule_take_keep_params)
        format.html { redirect_to schedule_take_keep_url(@schedule_take_keep), notice: "Schedule take keep was successfully updated." }
        format.json { render :show, status: :ok, location: @schedule_take_keep }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @schedule_take_keep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedule_take_keeps/1 or /schedule_take_keeps/1.json
  def destroy
    @schedule_take_keep.destroy

    respond_to do |format|
      format.html { redirect_to schedule_take_keeps_url, notice: "Schedule take keep was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule_take_keep
      @schedule_take_keep = ScheduleTakeKeep.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def schedule_take_keep_params
      params.require(:schedule_take_keep)
    end
end
