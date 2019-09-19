#!/usr/bin/env perl6

use v6;

sub deck( @cards, UInt $how-many, *@numbers --> List ) {
    return (@numbers X~ @cards)[^$how-many];
}

say deck( <bastos espadas>, 4, 1,3,5);
say deck( <♥ ♣ ♠ ♦>, 2, "Ace" );

=output
(1bastos 1espadas 3bastos 3espadas)
(Ace♥ Ace♣)

