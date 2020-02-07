function numberToString(num) {
  // Return a string of the number here!
  return String(num);
}


let Test = require('./test_assert');
Test.assertEquals(numberToString(67), '67');