Given(/^I am on exercise values page$/) do
  $browser.goto @base_url
  # checking if I am on right page,
  expect(ValuesPageObjects.page_title).to eq("exercise1 values")
end

When(/^I enter "([^"]*)" amount to value one$/) do |amount|
  ValuesPageObjects.value_1_text_field.set amount
end

When(/^I enter "([^"]*)" amount to value two$/) do |amount|
  ValuesPageObjects.value_2_text_field.set amount
end

When(/^I enter "([^"]*)" amount to value three$/) do |amount|
  ValuesPageObjects.value_3_text_field.set amount
end

When(/^I enter "([^"]*)" amount to value four$/) do |amount|
  ValuesPageObjects.value_4_text_field.set amount
end

When(/^I enter "([^"]*)" amount to value five$/) do |amount|
  ValuesPageObjects.value_5_text_field.set amount
end

Then(/^I should see total value "([^"]*)" displayed$/) do |expected_value|
  expect(ValuesPageObjects.total_balance_text_field.value).to equal(expected_value)
end

And(/^I verify the right count of values appear on the screen$/) do
  expect(ValuesPageObjects.value_1_text_field.present?).to eq(true)
  expect(ValuesPageObjects.value_2_text_field.present?).to eq(true)
  expect(ValuesPageObjects.value_3_text_field.present?).to eq(true)
  expect(ValuesPageObjects.value_4_text_field.present?).to eq(true)
  expect(ValuesPageObjects.value_5_text_field.present?).to eq(true)
end

# .value should return integer as long as value == int
# this step below assumes value == int
And(/^I verify the values on the screen are greater than (\d+)$/) do
  expect(ValuesPageObjects.value_1_text_field.value > 0).to eq(true)
  expect(ValuesPageObjects.value_2_text_field.value > 0).to eq(true)
  expect(ValuesPageObjects.value_3_text_field.value > 0).to eq(true)
  expect(ValuesPageObjects.value_4_text_field.value > 0).to eq(true)
  expect(ValuesPageObjects.value_5_text_field.value > 0).to eq(true)
end


# .text method returns String data so .include? can be used to find a char
And(/^I verify the values are formatted as currencies$/) do
  expect(ValuesPageObjects.value_1_text_field.text.include? "$").to eq(true)
  expect(ValuesPageObjects.value_2_text_field.text.include? "$").to eq(true)
  expect(ValuesPageObjects.value_3_text_field.text.include? "$").to eq(true)
  expect(ValuesPageObjects.value_4_text_field.text.include? "$").to eq(true)
  expect(ValuesPageObjects.value_5_text_field.text.include? "$").to eq(true)
end

Then(/^I verify the total balance matches the sum of the values$/) do
  val1 = ValuesPageObjects.value_1_text_field.value
  val2 = ValuesPageObjects.value_1_text_field.value
  val3 = ValuesPageObjects.value_1_text_field.value
  val4 = ValuesPageObjects.value_1_text_field.value
  val5 = ValuesPageObjects.value_1_text_field.value
  expected_total = val1.to_i + val2.to_i + val3.to_i + val4.to_i + val5.to_i
  actual_total = ValuesPageObjects.total_balance_text_field.value
  expect(actual_total).to equal(expected_total)
end