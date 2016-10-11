#require 'rspec/expectations'
require 'selenium-webdriver'
require 'cucumber'
require 'appium_lib'


desired_caps = {
    caps:  {
        platformName:  'Android',
        platformVersion: '6.0',
        deviceName:    'emulator-5554',
        app:            '/Users/mkhan/wiki-app-automation/app-alpha-debug.apk'

          }
}

server_url = "http://0.0.0.0:4723/wd/hub"

@appium_driver = Appium::Driver.new(desired_caps)

@selenium_driver = @appium_driver.start_driver
Appium.promote_appium_methods Object
