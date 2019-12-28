require 'rails_helper'

describe "doctors", type: :feature do
  before do
    @meredith = Doctor.create({name: "Meredith Grey", department: "Internal Medicine"})
    @bart = Patient.create(name: "Bart Simpson", age:10 )
    Appointment.create(appointment_datetime: DateTime.new(2016, 01, 11, 20, 20, 0), patient_id: 1, doctor_id: 1)
  end
end
