class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def date_time_display
    self.appointment_datetime.to_datetime.strftime("%B %d, %Y at %H:%M")
  end
end
