#!/usr/bin/env perl6

use v6;

package Moves {
    sub shuffle( *@deck ) is export {
        @deck.pick: *;
    }
}


import Moves;
say shuffle( "As de bastos", "3 de oros", "Sota de espadas" );

=output
/^^"("\w+/
