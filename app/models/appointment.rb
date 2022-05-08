class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :physician
  validates :appointment_date, presence: { message: " must be present" }

end
