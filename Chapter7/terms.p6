#!/usr/bin/env perl6

use v6;

sub term:<✔> { True }
sub term:<ℜ> { srand(time); return rand }

say "{✔}  {ℜ}";

=output
/True \s+/
