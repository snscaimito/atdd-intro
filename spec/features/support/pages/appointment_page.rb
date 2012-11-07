require 'page-object'

class AppointmentPage
  include PageObject

  page_url 'http://localhost:8080/petclinic/appointment'

  select_list(:appointments_for_treatment, :id => 'treatment')
  select_list(:appointment_time, :id => 'appointmentTime')
  select_list(:appointment_date, :id => 'appointmentDate')
  button(:book_appointment, :id => 'bookAppointment')

  def list_appointments_for_treatment(treatment)

  end
end