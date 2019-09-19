#!/usr/bin/env perl6

use v6;

my $non-latin-digits = rx/  <[\d] - [0..9]>+  /;
for  <٨٦  33> {
    say $_ ~~ $non-latin-digits;
}

=output
｢٨٦｣
Nil





