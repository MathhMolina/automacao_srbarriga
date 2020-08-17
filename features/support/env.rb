require "capybara"
require "capybara/cucumber"
require "site_prism"
require "pry"

Capybara.configure do |config|
    config.app_host = 'https://srbarriga.herokuapp.com'
    config.default_max_wait_time = 10
    config.default_driver = :selenium_chrome
end