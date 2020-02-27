<?php
// Complementary DNA
// Deoxyribonucleic acid (DNA) is a chemical found in the nucleus of cells and carries the "instructions" for the development and functioning of living organisms.

function DNA_strand($dna) {
  $dna_split = str_split($dna,1);
  $out = array_map('dnaMap',$dna_split);
  return join('',$out);
}

function dnaMap($input){
  $dna_hash = array('A' => 'T', 'T' => 'A', 'G' => 'C', 'C' => 'G');
  return $dna_hash[$input];
}

// // other sol:
// function DNA_strand($dna) {
//   return strtr($dna, 'ACGT', 'TGCA');
// }


echo DNA_strand("AAAA");
echo DNA_strand("TTTT");
echo DNA_strand("ATTGC");
echo DNA_strand("TAACG");
echo DNA_strand("GTAT");
echo DNA_strand("CATA");
?>