Given(/^A user goes to Google to Search for Zoo Animals$/) do
  @browser.goto "http://google.com"
end

When(/^the user inputs the name of the zoo (.*)$/) do |animal|
  @browser.text_field(:name => "q").set "#{animal}"
  @browser.send_keys :enter
end

Then(/^the user is shown results for (.*) animals$/) do |zoo|
  sleep 3
  if @browser.text.include? "#{zoo}"
  else
    scenario.fail
  end
end