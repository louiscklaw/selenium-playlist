#!/usr/bin/env python3
# https://www.selenium.dev/selenium/docs/api/py/webdriver_remote/selenium.webdriver.remote.webdriver.html#module-selenium.webdriver.remote.webdriver
# https://github.com/SeleniumHQ/selenium/wiki/DesiredCapabilities

import unittest

from selenium import webdriver
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities


class GoogleTestCase(unittest.TestCase):

  def setUp(self):
    # self.browser = webdriver.Chrome()
    self.browser = webdriver.Remote(
      command_executor='http://127.0.0.1:4444/wd/hub',
      desired_capabilities = {
        "browserName":"chrome",
        "version":"",
        "platform":"LINUX"
        })
    self.addCleanup(self.browser.quit)

  def testPageTitle(self):
    self.browser.get('http://www.google.com')
    self.assertIn('Google', self.browser.title)

if __name__ == '__main__':
  unittest.main(verbosity=2)


# class GoogleTestCase(unittest.TestCase):

#   def setUp(self):
    # self.browser = webdriver.Remote(
    #   command_executor='http://127.0.0.1:4444/wd/hub',
    #   desired_capabilities = {'desired_capabilities': webdriver.DesiredCapabilities.CHROME.copy()})

#     self.addCleanup(self.browser.quit)

#   def testPageTitle(self):
#     self.browser.get('http://www.google.com')
#     self.assertIn('Google', self.browser.title)

# if __name__ == '__main__':
#   unittest.main(verbosity=2)


# # driver = webdriver.Remote(
# #    command_executor='http://127.0.0.1:4444/wd/hub',
# #    desired_capabilities=DesiredCapabilities.OPERA)

# # driver.go