require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'require_all'
require 'site_prism'
require 'pry'
# require_relative '../../lib/page_objects/page/base/*.rb'
require_all 'lib'



Before do
  Capybara.register_driver :chrome_browser do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
  end

  Capybara.configure do |config|
    config.run_server = false
    config.app_host   = 'https://ezakupy.tesco.pl/'
    config.default_driver = :chrome_browser
  end

end
World(Capybara::DSL)