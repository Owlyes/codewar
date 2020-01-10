export default class Test {
  constructor(fun, out) {
      this.fun = fun;
      this.out = out;
  }

  static assertSimilar(fun, out) {
    console.log(fun == out ? fun == out : [fun, out]);
  }
}

// module.Test = function (fun, out) {
//   this.fun = fun;
//   this.out = out;
//   this.assertSimilar = function (fun, out) {
//     console.log(fun == out ? fun == out : [fun, out]);
//   }
// }