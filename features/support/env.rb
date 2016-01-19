require "cucumber"
require "capybara"
require 'capybara/cucumber'
require "selenium-webdriver"
require "site_prism"
require "require_all"
require "pry"

project_root = File.expand_path("../../", __dir__)
$: << project_root

require_rel "../../sections"
require_rel "../../pages"

require_relative "../../lib/avena"
require_rel '../../lib/helpers'


Capybara.configure do |config|
	config.app_host = 'http://www.avena.co.uk'
	config.default_driver = :selenium
	config.run_server = false
	#maximize the browser window as this affects functionality in certain browsers.
	config.page.driver.browser.manage.window.maximize
end

