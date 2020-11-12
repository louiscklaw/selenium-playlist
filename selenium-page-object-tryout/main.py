import os,sys
from pprint import pprint

import unittest
from selenium import webdriver
import page

ENV_CI=os.getenv('CI')
ENV_CI_TEST=os.getenv("CI_TEST")
SELENIUM_HUB_HOST='localhost'

SRC_DIR=os.path.dirname(__file__)
SCREENSHOT_DIR=SRC_DIR+'/screenshot'

class PythonOrgSearch(unittest.TestCase):
    """A sample test class to show how page object works"""

    def setUp(self):
      selenium_url = 'http://{}:4444/wd/hub'.format(SELENIUM_HUB_HOST)
      print(selenium_url)

      self.driver = webdriver.Remote(
        command_executor=selenium_url,
        desired_capabilities = {
          "browserName":"chrome",
          "version":"",
          "platform":"LINUX"
          })
      self.driver.get("http://www.python.org")

    def test_search_in_python_org(self):
        """
        Tests python.org search feature. Searches for the word "pycon" then verified that some results show up.
        Note that it does not look for any particular text in search results page. This test verifies that
        the results were not empty.
        """

        #Load the main page. In this case the home page of Python.org.
        main_page = page.MainPage(self.driver)
        #Checks if the word "Python" is in title
        assert main_page.is_title_matches(), "python.org title doesn't match."
        #Sets the text of search textbox to "pycon"
        main_page.search_text_element = "pycon"

        self.driver.save_screenshot('{}/python_org_before_search.png'.format(SCREENSHOT_DIR))
        main_page.click_go_button()
        self.driver.save_screenshot('{}/python_org_after_search.png'.format(SCREENSHOT_DIR))

        search_results_page = page.SearchResultsPage(self.driver)
        #Verifies that the results page is not empty
        assert search_results_page.is_results_found(), "No results found."

    def tearDown(self):
        self.driver.close()

if __name__ == "__main__":
    unittest.main()