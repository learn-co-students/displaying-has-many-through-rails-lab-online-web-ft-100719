class DoctorsController < ApplicationController
    before_action :set_doctor, only: [:show]

    def show 
    end 

    def index
        @doctors = Doctor.all
    end 

    private 

    def set_doctor
        @doctor = Doctor.find_by(params[:id])
    end 

    def doctor_params
        params.require(:doctor).permit(:name, :department)
    end 
end

