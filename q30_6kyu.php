<?php
// Multiples of 3 or 5
// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
// Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.
function solution($number){
  $number >= 1 ? $n = $number - 1 : $n = 0;
  $arr_3 = array_map( function($n) { return $n * 3; }, range(0,floor($n / 3)));
  $arr_5 = array_map( function($n) { return $n * 5; }, range(0,floor($n / 5)));
  return array_sum(array_unique(array_merge($arr_3, $arr_5)));
}

print_r(solution(0.7));  // will be 0
print_r(solution(10));  // will be 23
print_r(solution(15));  // will be 45
?>