const sayHelloWorld = require('./sayHelloWorld');

describe('Say Hello tests', () => {
  it('Should say Hello World', () => {
    const response = sayHelloWorld.sayHello();

    expect(response).toBe('Hello World!');
  });
  it('Should say Hello Marcelo', () => {
    const response = sayHelloWorld.sayHello('Marcelo');

    expect(response).toBe('Hello Marcelo!');
  });
});