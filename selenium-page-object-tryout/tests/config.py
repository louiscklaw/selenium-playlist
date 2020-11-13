import os,sys
from pprint import pprint

ENV_CI=os.getenv('CI')
ENV_CI_TEST=os.getenv("CI_TEST")
SELENIUM_HUB_HOST='localhost'

SRC_DIR=os.path.dirname(__file__)
SCREENSHOT_DIR=SRC_DIR+'/screenshot'
