class DoctorsController < ApplicationController
    def show 
        @doctor = Doctor.find_by(params[:id])
    end 

    def index
        @doctors = Doctor.all
    end 

    def new
        @doctor = Doctor.new
        @doctor.appointment.build
        @doctor.appointment.build
    end 

    def create
        @doctor = Doctor.create(doctor_params)
    end 

    private 

    def doctor_params
        params.require(:doctor).permit(:name, :department)
    end 
end

