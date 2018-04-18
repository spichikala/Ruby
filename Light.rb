require 'rubygems'
require 'selenium-webdriver'

  def Dependency
    # Start an instance of Chrome browser
    driver = Selenium::WebDriver.for :chrome
    # Go to rubygems.org url
    driver.navigate.to 'https://rubygems.org'
    driver.find_element(:xpath,'//input[@id="home_query"]').send_keys('ruby-debug19\n')
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    driver.find_element(:xpath,'//html//a[2]/span[1]/h2[1]').click
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    # get the run time depencies and authors
    dependency1 = driver.find_element(:xpath,'//html//div[@id="runtime_dependencies"]//a[1]').text.strip
    dependency2 = driver.find.element(:xpath,'//html//main[@class="main--interior"]//div[@class="l-colspan--l colspan--l--has-border"]//a[2]').text.strip
    dependency3 = driver.find_element(:xpath,'//html//main[@class="main--interior"]//div[@class="l-colspan--l colspan--l--has-border"]//a[3]').text.strip
    authors = driver.find_element(:xpath,'//p[contains(text(),"Kent Sibilev, Mark Moseley"]').text.strip
    puts "Run Time Dependencies: \n#{dependency1}\n#{dependency2}\n#{dependency3}\n"
    puts "Authors List: #{authors}\n"
    driver.quit
  end


  def Post_Facebook
    # Start an instance of Chrome browser
    driver = Selenium::WebDriver.for :chrome
    # Go to facebook.com url
    driver.navigate.to 'https://www.facebook.com'
    driver.find_element(:xpath,'//input[@id="home_query"]').send_keys('ruby-debug19\n')
    driver.find_element(:xpath,'//input[@id="email"]').clear.send_keys('test')
    driver.find_element(:xpath,'//input[@id="pass"]').clear.send_keys('test')
    driver.find_element(:xpath,'//label[@id="loginbutton"]').click
    driver.find_element(:xpath,'//div[@class="clearfix_ikh"]').send_keys('Hello World!')
    driver.find_element(:xpath,'//button[@class="_1mf7 _4jy0 _4jy3 _4jy1 _51sy selected _42ft _42fr"]').click
    #logout facebook
    driver.find_element(:xpath,'//div[@id="userNavigationLabel"]').click
    driver.find_element(:css,'._w0d[action="https://www.facebook.com/logout.php"]').click
    driver.quit
  end






