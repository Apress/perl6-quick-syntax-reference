#!/usr/bin/env perl6

use v6;

package Moves {
    sub shuffle( *@deck ) is export(:shfl) {
        @deck.pick: *;
    }
    sub card-sort( *@deck ) is export {
        @deck.sort;
    }
}


import Moves :shfl;
say shuffle( "As de bastos", "3 de oros", "Sota de espadas" );
# say card-sort(<1♠ 5♣ 3♥>);

=output
/^^"("\w+/
