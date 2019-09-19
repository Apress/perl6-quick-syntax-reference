#!/usr/bin/env perl6

use v6;

use lib <../Chapter11 Chapter11>;

use Test;

use Deckie;

my $deck = Deckie.new;

for 1..($deck.cards.elems/2) {
    my $draw = $deck.draw( 2 );
    is( $draw.elems, 2, "Correct number of elems" );
    cmp-ok( +$draw.comb[0], ">", 0, "Figure OK");
}
throws-like { $deck.draw( 2 ) }, X::Cards::NoMore, "No more cards" ;

done-testing;

=output
/ok/

