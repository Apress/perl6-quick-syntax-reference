#!/usr/bin/env perl6

use v6;

my token any-letter { <alpha>+ }
my token any-letter-plus-s {<alpha>+ s }

say "foostastic" ~~ &any-letter;
say "foostastic" ~~ &any-letter-plus-s;


=output
｢foostastic｣
Nil








