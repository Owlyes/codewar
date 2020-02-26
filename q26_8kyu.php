<?php
// Reversed Strings
// Complete the solution so that it reverses the string value passed into it.
// solution("world"); // returns "dlrow"

function solution($str) {
  $str_split = str_split($str,1);
  krsort($str_split);
  return join("",$str_split);

  // // other sol:
  // return strrev($str);

  // make sure the diff with sort(), rsourt(), a?sort(); ksort(), krsort(); u, ua, uk; natsort(); .....;
}

echo solution("world");
?>