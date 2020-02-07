
module.exports = {
  assertSimilar: function (fun, out) {
    console.log(fun == out ? fun == out : [fun, out]);
  }
  
}

module.exports = {
  assertEquals: function (fun, out) {
    console.log(fun == out ? fun == out : [fun, out]);
  }
}
// let test = require('./test')