Angenommen /^ich bin "(.*?)"$/ do |persona|
  @current_persona = persona
end

Und /^mein Hund "(.*?)" benoetigt die "(.*?)"$/ do |pet_name, treatment|
  @current_pet = pet_name
  @current_treatment = treatment
end

Wenn /^ich verfuegbare Termine fuer "(.*?)" ansehe$/ do |treatment|
  visit_page AppointmentPage do |page|
    page.pet_owner = @current_persona
    page.appointment_for_treatment = treatment
  end
end

Und /^ich den Termin fuer "(.*?)" am "(.*?)" waehle$/ do |time, date|
  on_page AppointmentPage do |page|
    page.appointment_time = time
    page.appointment_date = date
    page.pet_name = @current_pet
    page.book_appointment
  end
end

Dann /^habe ich einen Termin fuer "(.*?)" Uhr am "(.*?)" fuer "(.*?)" fuer meinen Hund "(.*?)"$/ do |time, date, treatment, pet_name|
  appointment = YAML.load_file(APPOINTMENT_FILE)
  appointment['treatment'].should == treatment
  appointment['time'].should == time
  appointment['date'].should == date
  appointment['pet_name'].should == pet_name
  appointment['pet_owner'].should == @current_persona
end
