describe("Demo test changedetect", function () {
  test("changedetect helloworld", function (browser) {
    browser
      .url("http://192.168.10.61:5000/")
      .waitForElementVisible("body")
      .assert.titleContains("Change Detection")
      .assert.visible("a[text=Diff]")
      // .sendKeys("input[type=search]", "nightwatch")
      // .assert.visible("button[type=submit]")
      // .click("button[type=submit]")
      // .assert.textContains(".layout__content", "Nightwatch.js")
      .saveScreenshot("changedetect_diff.png")
      .end();
  });
});
