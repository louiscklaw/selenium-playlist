const {By, Key, until} = require('selenium-webdriver');
const webdriver = require('selenium-webdriver');

(async function example() {
  // let driver = await new Builder().forBrowser('firefox').build();
  let driver = new webdriver.Builder()
    .forBrowser('firefox')
    .usingServer('http://localhost:4444/wd/hub')
    .build();

  await (await driver).takeScreenshot('')

})();
