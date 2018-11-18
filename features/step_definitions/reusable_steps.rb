Given(/^I am on "([^"]*)" page$/) do |page|
  $browser.goto(page)
end

When(/^I enter "([^"]*)" to "([^"]*)" text field$/) do |text, textfield|
  $browser.text_field(:name, textfield).wait_until_present
  $browser.text_field(:name, textfield).set text
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect($browser.text.include? text).to eq(true)
end

And(/^I click on "([^"]*)" button using name$/) do |selector_text|
  $browser.element(:name, selector_text).click
end