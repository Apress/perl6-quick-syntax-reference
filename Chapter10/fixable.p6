#!/usr/bin/env perl6

use v6;

multi sub trait_mod:<is>( Variable $card, :$fixable  ) {
    say "Fixing with $card, $fixable";
}

my $card is fixable = (1 => '♥');
my $other-card is fixable(False) = 7;

=output
/Fixing \s+ with/
