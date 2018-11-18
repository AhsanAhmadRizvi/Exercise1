# use this step for debugging -alternative to ruby debugger
And(/^I wait for "([^"]*)" seconds$/) do |seconds|
  sleep seconds.to_i
end