class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def date
        self.appointment_datetime.strftime("%B %e, %Y at %k:%M")
        #add %p if AM/PM is needed!
    end
end
