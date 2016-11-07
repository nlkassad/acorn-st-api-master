class SlotsController < ApplicationController
  before_action :set_slot, only: [:show, :update, :destroy]

  # GET /slots
  # GET /slots.json
  def index
    @slots = Slot.all

    render json: @slots
  end

  # GET /slots/1
  # GET /slots/1.json
  def show
    render json: @slot
  end

  # POST /slots
  # POST /slots.json
  def create
    @slot = Slot.new(slot_params)

    if @slot.save
      render json: @slot, status: :created, location: @slot
    else
      render json: @slot.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /slots/1
  # PATCH/PUT /slots/1.json
  def update
    @slot = Slot.find(params[:id])

    if @slot.update(slot_params)
      head :no_content
    else
      render json: @slot.errors, status: :unprocessable_entity
    end
  end

  # DELETE /slots/1
  # DELETE /slots/1.json
  def destroy
    @slot.destroy

    head :no_content
  end

  private

    def set_slot
      @slot = Slot.find(params[:id])
    end

    def slot_params
      params.require(:slot).permit(:time_block)
    end
end
