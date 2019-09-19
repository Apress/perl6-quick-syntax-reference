#!/usr/bin/env perl6

use v6;

my token any-letter { <alpha>+ }

say "foo,bar" ~~ m/<first=any-letter><punct><second=any-letter>/;
$<second>.say;

=output
｢foo,bar｣
 any-letter => ｢foo｣
  alpha => ｢f｣
  alpha => ｢o｣
  alpha => ｢o｣
 first => ｢foo｣
  alpha => ｢f｣
  alpha => ｢o｣
  alpha => ｢o｣
 punct => ｢,｣
 any-letter => ｢bar｣
  alpha => ｢b｣
  alpha => ｢a｣
  alpha => ｢r｣
 second => ｢bar｣
  alpha => ｢b｣
  alpha => ｢a｣
  alpha => ｢r｣
｢bar｣
 alpha => ｢b｣
 alpha => ｢a｣
 alpha => ｢r｣
