#!/usr/bin/python3

from selenium import webdriver

from viewports import *
from config import *

def test_helloworld():
  browser = webdriver.Chrome()
  browser.get('http://www.google.com')

  for viewport_config in ALL_VIEWPORTS:
    (viewport_name, dump1, dump2 , width, height) = viewport_config
    sc_filename = '{}/{}_test.png'.format(SCREENCAPTURE_PATH,viewport_name)

    browser.set_window_size(width, height)
    browser.save_screenshot(sc_filename)

    assert('Google'==browser.title)

  browser.quit
