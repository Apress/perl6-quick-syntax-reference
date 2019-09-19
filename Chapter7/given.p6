#!/usr/bin/env perl6

use v6;

given Ⅿ cmp 1000 {
    when More {say "M"}
    when Same {say "S"}
    default {say "L"}
}

=output
S
