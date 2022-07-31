class DailyTakeKeepsController < ApplicationController
  before_action :set_daily_take_keep, only: %i[ show edit update destroy ]

  # GET /daily_take_keeps or /daily_take_keeps.json
  def index
    @daily_take_keeps = DailyTakeKeep.all
  end

  # GET /daily_take_keeps/1 or /daily_take_keeps/1.json
  def show
  end

  # GET /daily_take_keeps/new
  def new
    @daily_take_keep = DailyTakeKeep.new
  end

  # GET /daily_take_keeps/1/edit
  def edit
  end

  # POST /daily_take_keeps or /daily_take_keeps.json
  def create
    @daily_take_keep = DailyTakeKeep.new(daily_take_keep_params)

    respond_to do |format|
      if @daily_take_keep.save
        format.html { redirect_to daily_take_keep_url(@daily_take_keep), notice: "Daily take keep was successfully created." }
        format.json { render :show, status: :created, location: @daily_take_keep }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @daily_take_keep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_take_keeps/1 or /daily_take_keeps/1.json
  def update
    respond_to do |format|
      if @daily_take_keep.update(daily_take_keep_params)
        format.html { redirect_to daily_take_keep_url(@daily_take_keep), notice: "Daily take keep was successfully updated." }
        format.json { render :show, status: :ok, location: @daily_take_keep }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @daily_take_keep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_take_keeps/1 or /daily_take_keeps/1.json
  def destroy
    @daily_take_keep.destroy

    respond_to do |format|
      format.html { redirect_to daily_take_keeps_url, notice: "Daily take keep was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_take_keep
      @daily_take_keep = DailyTakeKeep.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def daily_take_keep_params
      params.require(:daily_take_keep).permit(:customer_id)
    end
end
