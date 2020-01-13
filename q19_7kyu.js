// Isograms
// An isogram is a word that has no repeating letters, consecutive or non-consecutive. Implement a function that determines whether a string that contains only letters is an isogram. Assume the empty string is an isogram. Ignore letter case.
// isIsogram("Dermatoglyphics") == true
// isIsogram("aba") == false
// isIsogram("moOse") == false // -- ignore letter case

// --- 2020.01.08 created --------------------------
function isIsogram(str){
  let str_arry = str.toLowerCase().split('').sort();
  let str_filter = str_arry.reduce((accu, i) => {
    return (i == str_arry.slice(accu.length - 1 , accu.length)) ? accu : [...accu, i]
  },[]);
  return str_arry.length == str_filter.length


  // // other solution
  // return !/(\w).*\1/i.test(str)
}


let Test = require('./test_assert');
Test.assertSimilar( isIsogram("Dermatoglyphics"), true );
Test.assertSimilar( isIsogram("isogram"), true );
Test.assertSimilar( isIsogram("aba"), false);
Test.assertSimilar( isIsogram("moOse"), false);
Test.assertSimilar( isIsogram("isIsogram"), false );
Test.assertSimilar( isIsogram(""), true);
console.log('------------');

