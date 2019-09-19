#!/usr/bin/env perl6

use v6;

sub deck( @numbers, @cards ) {
    return @numbers X~ @cards;
}

say deck( 1..3, <bastos espadas>);
say deck( <J Q K>, <♥ ♣ ♠ ♦> );

=output
(1bastos 1espadas 2bastos 2espadas 3bastos 3espadas)
(J♥ J♣ J♠ J♦ Q♥ Q♣ Q♠ Q♦ K♥ K♣ K♠ K♦)
