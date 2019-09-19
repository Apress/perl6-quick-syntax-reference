#!/usr/bin/env perl6

use v6;

use lib <../Chapter11 Chapter11>;

use Test;

use Deckie;

plan *;

my $deck = Deckie.new;

for 1..($deck.cards.elems/2) {
    my $draw = $deck.draw( 2 );
    subtest {
	is( $draw.elems, 2, "Correct number of elems" );
	cmp-ok( +$draw.comb[0], ">", 0, "Figure OK");
    }, "Testing card hand"
}

=output
/ok/

