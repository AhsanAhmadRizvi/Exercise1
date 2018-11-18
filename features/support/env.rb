require 'watir'
require 'cucumber'
require 'rspec'

# chrome driver path
Selenium::WebDriver::Chrome.driver_path = '/Users/ahsan/Desktop/chromedriver'

# create global variable for browser instance
$browser = Watir::Browser.new :chrome


@base_url = "https://www.exercise1.com/values"


