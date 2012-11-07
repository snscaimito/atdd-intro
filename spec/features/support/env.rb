require 'watir-webdriver'
require 'page-object/page_factory'

browser = Watir::Browser.new

Before do
  @browser = browser
end

at_exit do
  browser.close
end

World(PageObject::PageFactory)
