Angenommen /^ich bin "(.*?)"$/ do |persona|
  @current_persona = persona
end

Und /^mein Hund "(.*?)" benoetigt die "(.*?)"$/ do |pet_name, treatment|
  @current_pet = pet_name
  @current_treatment = treatment
end

Wenn /^ich verfuegbare Termine fuer "(.*?)" ansehe$/ do |treatment|
  visit_page AppointmentPage do |page|
    page.list_appointments_for_treatment(treatment)
  end
end

Und /^ich den Termin fuer "(.*?)" am "(.*?)" waehle$/ do |time, date|
  on_page AppointmentPage do |page|
    page.select_time(time)
    page.select_date(date)
    page.book_appointment
  end
end

Dann /^habe ich einen Termin fuer "(.*?)" Uhr am "(.*?)" fuer "(.*?)" fuer meinen Hund "(.*?)"$/ do |time, date, treatment, pet_name|
    pending # express the regexp above with the code you wish you had
  # @current_persona
end
