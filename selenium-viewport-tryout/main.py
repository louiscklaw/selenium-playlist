#!/usr/bin/python3

import unittest
from selenium import webdriver

from viewports import *
from config import *

class GoogleTestCase(unittest.TestCase):

  def setUp(self):
    self.browser = webdriver.Chrome()
    self.browser.get("http://www.google.com")

    self.addCleanup(self.browser.quit)

  def testViewports(self):
    for viewport_config in ALL_VIEWPORTS:
      (viewport_name, dump1, dump2 , width, height) = viewport_config
      sc_filename = '{}/{}_test.png'.format(SCREENCAPTURE_PATH,viewport_name)
      self.browser.set_window_size(width, height)
      self.browser.save_screenshot(sc_filename)
    # self.assertIn('Google', self.browser.title)

if __name__ == '__main__':
  unittest.main(verbosity=2)
