<?php
// Return the number (count) of vowels in the given string.
// We will consider a, e, i, o, and u as vowels for this Kata.
// The input string will only consist of lower case letters and/or spaces.

function getCount($str) {
  $vowelsCount = 0;
  $str_split = str_split($str);
  foreach ($str_split as $key => $value) {
    if ($value == 'a' || $value == 'e' || $value == 'i' || $value == 'o' || $value == 'u') { $vowelsCount += 1; }
  }  
  return $vowelsCount;
}

// // other sol
// function getCount($str) {;
//   return preg_match_all('/[aeiou]/i',$str,$matches);
// }


echo getCount("abracadabra");
?>