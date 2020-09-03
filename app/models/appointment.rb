class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  default_scope { order(appointment_datetime: :desc)}

  def datetime
  self.appointment_datetime.to_formatted_s(:long)
  end
  
end
