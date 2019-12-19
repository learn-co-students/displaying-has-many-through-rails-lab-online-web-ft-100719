class AppointmentsController < ApplicationController

    def show 
        #binding.pry
        @appointment = Appointment.find(params[:id])
        #January 12, 2016 at 3:00
        #<%= @appointment.appointment_datetime.strftime("%B %d, %Y at %H:%M")%>
    end 
end 