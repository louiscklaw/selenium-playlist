describe('Google.com Demo', function() {

  before(browser => browser.url('https://www.google.com/'));

  test('Demo test google.com', function (browser) {
    browser
      .waitForElementVisible('body')
      .assert.titleContains('Google')
  });

  after(browser => browser.end());
});
