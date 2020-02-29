<?php
// Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').
function solution($str) {
  $str_split = str_split($str);
  $out = [];
  if (empty($str) == 0) {
    for ($i = 0; $i < count($str_split); $i++) {
      if ( $i % 2 <> 0) {
        array_push($out, join('', [$str_split[$i-1], $str_split[$i]]));
      } elseif ( $i == count($str_split) - 1) {
          array_push($out, join('', [$str_split[$i], '_']));
      } else {}
    }
  }
  return $out;
}

// // other sol_1:
// function solution($str) {
//   preg_match_all('/../', $str . '_', $matches);
//   return $matches[0];
// }

// // other sol_2:
// function solution($str) {
//   $array = str_split($str, 2);
//   if(strlen($str) % 2 == 1) {
//      $array[] = array_pop($array) . "_";
//   }
//   return $array;
// }

print_r(solution(''));
print_r(solution('abc'));
print_r(solution("abcdef"));
print_r(solution("abcdefg"));
?>