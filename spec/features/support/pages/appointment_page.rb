require 'page-object'

class AppointmentPage
  include PageObject

  page_url 'http://localhost:8080/petclinic/appointment'
end