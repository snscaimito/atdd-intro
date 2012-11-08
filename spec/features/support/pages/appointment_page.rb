require 'page-object'

class AppointmentPage
  include PageObject

  page_url 'http://localhost:8080/petclinic/appointment'

  text_field(:pet_name, :id => 'petName')
  text_field(:pet_owner, :id => 'petOwner')
  select_list(:appointment_for_treatment, :id => 'treatment')
  select_list(:appointment_time, :id => 'appointmentTime')
  select_list(:appointment_date, :id => 'appointmentDate')
  button(:book_appointment, :id => 'bookAppointment')

end