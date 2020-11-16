#!/usr/bin/python3

from selenium import webdriver

def test_helloworld():
    browser = webdriver.Chrome()
    browser.get('http://www.google.com')
    assert('Google'==browser.title)
    browser.quit
