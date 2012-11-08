require 'watir-webdriver'
require 'page-object/page_factory'
require 'rspec-expectations'

APPOINTMENT_FILE = '../app/petclinic/target/appointment.yaml'

browser = Watir::Browser.new

Before do
  @browser = browser
end

at_exit do
  browser.close
end

World(PageObject::PageFactory)
