
before(browser => browser.url('https://www.ecosia.org/'));

after(browser => browser.end());

module.exports = {
  '@tags': ['login', 'sanity'],
  'demo login test': function (browser) {
    browser
      .waitForElementVisible('body')
      .assert.titleContains('Ecosia')
      .assert.visible('input[type=search]')
      .setValue('input[type=search]', 'nightwatch')
      .assert.visible('button[type=submit]')
      .click('button[type=submit]')
      .assert.containsText('.mainline-results', 'Nightwatch.js')
      .saveScreenshot('./testscreenshot.png')
  }
};
