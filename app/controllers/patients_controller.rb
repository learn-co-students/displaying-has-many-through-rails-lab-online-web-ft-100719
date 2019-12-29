class PatientsController < ApplicationController
    before_action :set_patient, only: [:show]

    def show 
    end

    def index
        @patients = Patient.all
    end 

    private 

    def set_patient
        @patient = Patient.find_by(params[:id])
    end 

    def patient_params
        params.require(:patient).permit(:name, :age)
    end 
end
