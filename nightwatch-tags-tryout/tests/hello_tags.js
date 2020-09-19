module.exports = {
  '@tags': ['login', 'sanity'],
  before : function(browser) {
    console.log('Setting up...');
  },

  after : function(browser) {
    console.log('Closing down...');
  },

  beforeEach : function(browser) {
    console.log('hello beforeEach')
  },

  afterEach : function(browser) {
    console.log('hello afterEach')
  },

  'step one' : function (browser) {
    console.log('hello step one')
  },

  'step two' : function (browser) {
    console.log('hello step two')

  }
};