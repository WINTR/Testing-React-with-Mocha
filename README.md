# Testing React and Flux (McFly) with Mocha

## Get going
1. `npm install`
2. `mocha`

## Tools
- [Mocha](https://mochajs.org) for running tests
- [Chai](http://chaijs.com/) for assertions
- [Sinon](http://sinonjs.org/) for stubs, spys, etc
- [Nock](https://github.com/pgte/nock) to mock external API calls
- [Rewire](https://github.com/jhnns/rewire) to mock `require` calls and to allow private method testing
- [Decache](https://github.com/dwyl/decache) to help out with the Flux dispatcher being a singleton

## Patterns

### React Components
- Use the React Test Utils
- Use Rewire's `__set__` method to mock nested React components. See - ParentTests.coffee for example.

### Flux Stores
- Use `dispatcher.dispatch` to dispatch fake actions
- Use Rewire's `__get__` method to expose private methods
- See ItemStoreTests.coffee for examples

### Flux Actions
- Use Sinon Spys and spy on `dispatcher.dispatch` to make sure your actions are firing as expected 

### External API calls
- Use Nock to mock any external APIs that are needed in your tests
