require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.register_driver :selenium do |app|
 Capybara::Selenium::Driver.new(app,:browser => :chrome)
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = "http://wejump-automation-test.github.io/qa-test"
  config.default_max_wait_time = 10
end