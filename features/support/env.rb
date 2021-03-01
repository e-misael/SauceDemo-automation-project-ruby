# Importações
require "capybara"
require "capybara/cucumber"
require "faker"
require "allure-cucumber"

# Integração entre capybara e selenium
Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "https://www.saucedemo.com"
  config.default_max_wait_time = 10
  
end