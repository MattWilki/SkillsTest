require "watir-webdriver"
require "cucumber"

Before do
  @browser = Watir::Browser.new :ff
  @browser.window.maximize
end

After do
  @browser.close
end