#!/usr/bin/env perl6

use v6;

my $first = 3;
my @latests;
for ^3 {
    @latests = (+$first, $first *= 3 );
}
@latests.say

=output
[27 81]
