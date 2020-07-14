var webdriver = require('selenium-webdriver'),
  By = webdriver.By,
  Wait = webdriver.wait,
  until = webdriver.until;

var driver = new webdriver.Builder()
  .withCapabilities({ acceptSslCerts: true, acceptInsecureCerts: true })
  .forBrowser('chrome')
  .build();



console.log('done')