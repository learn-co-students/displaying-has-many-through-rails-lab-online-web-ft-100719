class AppointmentsController < ApplicationController

  def show
    @appoint = Appointment.find_by(id: params[:id])
  end
end