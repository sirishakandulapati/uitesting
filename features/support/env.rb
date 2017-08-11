require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'require_all'
require 'site_prism'
require 'pry'
require 'active_support/inflector'
require 'rspec'
# require_relative '../../lib/page_objects/page/base/*.rb'

PLATFORM = ENV['PLATFORM'] || 'mobile'

if (PLATFORM == 'desktop')
  require_all 'lib/page_objects/desktop'
else
  require_all 'lib/page_objects/mobile'
end

require_all 'lib/helpers'

Before do
  if (PLATFORM == 'desktop')
    Capybara.register_driver :chrome_browser do |app|
      Capybara::Selenium::Driver.new(app, browser: :chrome)
    end
  else
    Capybara.register_driver :chrome_browser do |app|
      driver = Capybara::Selenium::Driver.new(app, browser: :chrome)
      driver.browser.manage.window.resize_to(300,640)
      driver
    end

  end

  Capybara.configure do |config|
    config.default_driver = :chrome_browser
    config.run_server = false
    config.app_host = 'https://ezakupy.tesco.pl/'
  end

end
World(Capybara::DSL)