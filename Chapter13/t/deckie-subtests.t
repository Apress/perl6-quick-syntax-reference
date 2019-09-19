#!/usr/bin/env perl6

use v6;

use lib <../Chapter11 Chapter11>;

use Test;

use Deckie;

plan 20;
my $deck = Deckie.new;
for 1..($deck.cards.elems/2) {
    given $deck.draw( 2 ) {
	isnt( @_[0], @_[1], "Cards from pair are different");
    }
}

=output
/ok/

