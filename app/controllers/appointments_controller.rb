class AppointmentsController < OpenReadController
  before_action :set_appointment, only: [:show, :update, :destroy]
  before_action :set_current_user, only: [:create]

  # GET /appointments
  # GET /appointments.json
  def index
    @appointments = Appointment.all

    render json: @appointments
  end

  # GET /appointments/1
  # GET /appointments/1.json
  def show
    render json: @appointment
  end

  # POST /appointments
  # POST /appointments.json
  def create
    @appointment = current_user.appointment.build(appointment_params)
    @appointment.user_id = current_user.id

    if @appointment.save
      render json: @appointment, status: :created, location: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /appointments/1
  # PATCH/PUT /appointments/1.json
  def update
    # @appointment = Appointment.find(params[:id])

    if @appointment.update(appointment_params)
      head :no_content
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /appointments/1
  # DELETE /appointments/1.json
  def destroy
    @appointment.destroy

    head :no_content
  end

  private

  def set_current_user
    @current_user_id = current_user.id
  end

  def set_appointment
    @appointment = current_user.appointments.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:user_id, :slot_id)
  end
end
