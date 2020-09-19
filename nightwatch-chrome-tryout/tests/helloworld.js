
describe('example.com Demo', function() {

  before(browser => browser.url('https://www.example.com/'));

  test('Demo test ecosia.org', function (browser) {
    browser
      .waitForElementVisible('body')
      .assert.titleContains('Example')
      .assert.visible('h1')
      .saveScreenshot('example.png')
      // .waitForElementVisible('.small-footer-link-item')
      // .assert.containsText('.mainline-results', 'Nightwatch.js')
  });

  after(browser => browser.end());
});
