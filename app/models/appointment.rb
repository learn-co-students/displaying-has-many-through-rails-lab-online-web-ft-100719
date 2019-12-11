class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def date
        self.appointment_datetime.strftime("%B %e, %Y at %l:%M")
        #add %p if AM/PM is needed!
    end

    def doctor
        self.doctor_id ? Doctor.find_or_create_by(id: doctor_id) : nil
    end

    def patient
        self.patient_id ? Patient.find_or_create_by(id: patient_id) : nil
    end
end
