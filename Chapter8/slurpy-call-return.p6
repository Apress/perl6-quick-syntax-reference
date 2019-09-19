#!/usr/bin/env perl6

use v6;

sub deck( @cards, *@numbers --> Seq ) {
    return @numbers X~ @cards;
}

say deck( <bastos espadas>, 1,3,5);
say deck( <♥ ♣ ♠ ♦>, "Ace" );

=output
(1bastos 1espadas 3bastos 3espadas 5bastos 5espadas)
(Ace♥ Ace♣ Ace♠ Ace♦)

