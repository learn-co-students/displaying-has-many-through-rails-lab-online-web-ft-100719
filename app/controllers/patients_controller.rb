class PatientsController < ApplicationController 

  def index 
    @patients = Patient.all
    
  end 


  def show 
    #binding.pry
    @patient = Patient.find(params[:id])
    @apt = @patient.appointments
  end 
end 