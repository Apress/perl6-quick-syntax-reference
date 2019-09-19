#!/usr/bin/env perl6

use v6;

my token word { <alpha>+ }
my rule comma-separated {<word><punct> <word>}

say "foo, bar" ~~ &comma-separated;


=output
｢foo, bar｣
 word => ｢foo｣
  alpha => ｢f｣
  alpha => ｢o｣
  alpha => ｢o｣
 punct => ｢,｣
 word => ｢bar｣
  alpha => ｢b｣
  alpha => ｢a｣
  alpha => ｢r｣
