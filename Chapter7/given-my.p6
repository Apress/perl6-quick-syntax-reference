#!/usr/bin/env perl6

use v6;

my $is-it-K = Ⅿ cmp 1000;
given $is-it-K {
    when More {say "M"}
    when Same {say "S"}
    default {say "L"}
}

=output
S
