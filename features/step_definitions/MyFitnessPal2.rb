Given(/^a user wants to add food to their daily summary$/) do
  @browser.goto "http://myfitnesspal.com"
  @browser.a(:class => 'fancylink').click
  @browser.text_field(:name => 'username').set "QATester321"
  @browser.text_field(:name => 'password').set "Test123!"
  @browser.send_keys :return
end

When(/^the user clicks add food$/) do
  @browser.a(:href => '/food/diary/QATester321').click
  sleep 10
end

Then(/^the user is redirected to a page that allows them to input their food$/) do
  if @browser.text.include? "Food Diary"
  else
    scenario.fail
  end
end

Given(/^a user chooses to add calories to their daily summary$/) do
  @browser.goto "http://myfitnesspal.com"
  @browser.a(:class => 'fancylink').click
  @browser.text_field(:name => 'username').set "QATester321"
  @browser.text_field(:name => 'password').set "Test123!"
  @browser.send_keys :return
  @browser.a(:href => '/food/diary/QATester321').click
end

When(/^the user clicks the add food button under (.*)$/) do |link|
  @browser.a(:href => "/user/QATester321/diary/add?meal=#{link}").click
end

Then(/^they are taken to a new page prompting the user for their (.*) choice$/) do |food|
  if @browser.text.include? "#{food}"
  else
    scenario.fail
  end
end


Given(/^a user is adding breakfast food to their daily summary$/) do
  @browser.goto "http://myfitnesspal.com"
  @browser.a(:class => 'fancylink').click
  @browser.text_field(:name => 'username').set "QATester321"
  @browser.text_field(:name => 'password').set "Test123!"
  @browser.send_keys :return
  @browser.a(:href => '/food/diary/QATester321').click
  @browser.a(:href => '/user/QATester321/diary/add?meal=0').click
end

When(/^the user enters a real food "([^"]*)"$/) do |arg|
  @browser.text_field(:name => 'search').set "#{arg}"
  @browser.send_keys :return
  sleep 10
end

Then(/^they are given results about "([^"]*)"$/) do |arg|
  if @browser.text.include? "#{arg}"
  else
    scenario.fail
  end
end
rndo = rand(1..100)
Given(/^a user is adding food to their daily summary$/) do
  @browser.goto "http://myfitnesspal.com"
  @browser.a(:class => 'fancylink').click
  @browser.text_field(:name => 'username').set "QATester321"
  @browser.text_field(:name => 'password').set "Test123!"
  @browser.send_keys :return
  @browser.a(:href => '/food/diary/QATester321').click
  @browser.a(:href => '/user/QATester321/diary/add?meal=0').click
end

When(/^the user enters a number into the food search$/) do
  @browser.text_field(:name => 'search').set "#{rndo}"
  @browser.send_keys :return
end

Then(/^they get results including the number$/) do
  if @browser.text.include? "#{rndo}"
  else
    scenario.fail
  end
end

Given(/^a user is adding into their daily summary$/) do
  @browser.goto "http://myfitnesspal.com"
  @browser.a(:class => 'fancylink').click
  @browser.text_field(:name => 'username').set "QATester321"
  @browser.text_field(:name => 'password').set "Test123!"
  @browser.send_keys :return
  @browser.a(:href => '/food/diary/QATester321').click
  @browser.a(:href => '/user/QATester321/diary/add?meal=0').click
end

When(/^the user inputs a special character (.*) into the food search$/) do |spcl|
  @browser.text_field(:name => 'search').set "#{spcl}"
  @browser.send_keys :return
end


Then(/^they are presented with a message displaying that there are no results found$/) do
  if @browser.text.include? "No results found."
  else
    scenario.fail
  end
end

Given(/^a user is adding “milk” to their daily food summary$/) do
  @browser.goto "http://myfitnesspal.com"
  @browser.window.maximize
  @browser.a(:class => 'fancylink').click
  @browser.text_field(:name => 'username').set "QATester321"
  @browser.text_field(:name => 'password').set "Test123!"
  @browser.send_keys :return
  @browser.a(:href => '/food/diary/QATester321').click
  @browser.a(:href => '/user/QATester321/diary/add?meal=0').click
end

When(/^they input ‘milk’ in the food search$/) do
  @browser.text_field(:name => 'search').set "milk"
  @browser.send_keys :return
end


And(/^choose the best fitting result \(first result in this test\)$/) do
  @browser.ul(:id => "matching").li(:index => 1 ).a.click
  @browser.a(:href => '#').click
end

Then(/^the food is presented at the right with a link to the nutritional facts$/) do
  if @browser.text.include? "Nutrition Facts"
  else
    scenario.fail
  end
end

Given(/^a user is adding milk to their food summary$/) do
  @browser.goto "http://myfitnesspal.com"
  @browser.window.maximize
  @browser.a(:class => 'fancylink').click
  @browser.text_field(:name => 'username').set "QATester321"
  @browser.text_field(:name => 'password').set "Test123!"
  @browser.send_keys :return
  @browser.a(:href => '/food/diary/QATester321').click
  @browser.a(:href => '/user/QATester321/diary/add?meal=0').click
  @browser.text_field(:name => 'search').set "milk"
  @browser.send_keys :return
  @browser.ul(:id => "matching").li(:index => 1 ).a.click
end

When(/^the user selects the appropriate item and amount$/) do
  @browser.text_field(:id => 'food_entry_quantity').set "2.0"
  @browser.button(:id => 'update_servings').click
end

Then(/^it is added to the selected meal of the day$/) do
  if @browser.text.include? "Milk"
  else
    scenario.fail
  end
end

Given(/^a user adds food to the summary$/) do
  @browser.goto "http://myfitnesspal.com"
  @browser.window.maximize
  @browser.a(:class => 'fancylink').click
  @browser.text_field(:name => 'username').set "QATester321"
  @browser.text_field(:name => 'password').set "Test123!"
  @browser.send_keys :return
  @browser.a(:href => '/food/diary/QATester321').click
  @browser.a(:href => '/user/QATester321/diary/add?meal=0').click
  @browser.text_field(:name => 'search').set "milk"
  @browser.send_keys :return
  @browser.ul(:id => "matching").li(:index => 1 ).a.click
end

When(/^a serving amount is selected$/) do
  @browser.select_list(:id => 'food_entry_weight_id').select("1 cup")
  @browser.button(:id => 'update_servings').click
end

Then(/^the selected serving amount is appropriately added$/) do
  if @browser.text.include? "1 cup"
  else
    scenario.fail
  end
end

Given(/^a user is adding food to their summary$/) do
  @browser.goto "http://myfitnesspal.com"
  @browser.window.maximize
  @browser.a(:class => 'fancylink').click
  @browser.text_field(:name => 'username').set "QATester321"
  @browser.text_field(:name => 'password').set "Test123!"
  @browser.send_keys :return
  @browser.a(:href => '/food/diary/QATester321').click
  @browser.a(:href => '/user/QATester321/diary/add?meal=0').click
  @browser.text_field(:name => 'search').set "milk"
  @browser.send_keys :return
end

And(/^they select the appropriate food \(appropriate with what they entered\)$/) do
  @browser.ul(:id => "matching").li(:index => 0 ).a.click
end

When(/^the user originally chose one meal of the day$/) do
  if @browser.text.include? "Breakfast"
  else
    scenario.fail
  end
end

And(/^they select a different meal when asked$/) do
  @browser.select_list(:id => 'food_entry_meal_id').select_value("2")
  @browser.button(:id => 'update_servings').click
end

Then(/^the food is added to the selected meal rather than the initial choice$/) do
  if @browser.text.include? "Milk"
  else
    scenario.fail
  end
end