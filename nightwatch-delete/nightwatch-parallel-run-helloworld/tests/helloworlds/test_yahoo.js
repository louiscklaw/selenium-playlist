describe('Yahoo.com Demo', function() {

  before(browser => browser.url('https://www.yahoo.com/'));

  test('Demo test yahoo.com', function (browser) {
    browser
      .waitForElementVisible('body')
      .assert.titleContains('Yahoo')
  });

  after(browser => browser.end());
});
