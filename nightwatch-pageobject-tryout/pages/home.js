const searchCommands = {
  submit() {
    this.waitForElementVisible('@submitButton', 1000)
      .click('@submitButton')
      .api.pause(1000);

    return this; // Return page object for chaining
  }
};

module.exports = {
  url: 'https://www.google.com/',
  commands: [searchCommands],
  elements: {
    searchBar: {selector: 'input[name=q]'},
    submitButton: {selector: 'input[type="submit"]'}
  }
};
