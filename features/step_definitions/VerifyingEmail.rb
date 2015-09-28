useremail = "NULL"
password = "NULL"



rndo = rand(1..5000)


Given(/^a user registered for an account at MyFitnessPal$/) do
  @browser.goto "https://gmail.com"
  @browser.window.maximize
  @browser.text_field(:id => 'Email').set "#{useremail}"
  @browser.send_keys :return
  @browser.text_field(:id => 'Passwd').set "#{password}"
  @browser.send_keys :return
end

When(/^they complete the registration they should recieve an email for verification$/) do
  if @browser.text.include? "Verify your email address"
  else
    @browser.screenshot.save "GmailEmailTest #{rndo}.png"
    scenario.fail
  end
end
#To do this test successfully, we use the link "https://mail.google.com/mail/?ui=html&zy=h"
#This turns our Gmail account settings to basic HTML by default.

And(/^when they open that email and click the link$/) do
  @browser.a(:href => '?&th=14dcb553dc36e435&v=c').click
  @browser.a(:rel => 'noreferrer').click
  sleep 3
  @browser.windows.last.use do
    puts @browser.url
  end
end

Then(/^they should be prompted with a message displaying the verification was registered$/) do
  @browser.goto "http://www.myfitnesspal.com/account/email/verify/91513489/QbMxsa3fhafCmbJsy6Ss"
  if @browser.text.include? "Great! You've verified your email"
  else
    @browser.screenshot.save "MyfitnessPal SS #{rndo}.png"
    scenario.fail
  end
end