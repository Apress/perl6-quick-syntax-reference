#!/usr/bin/env perl6

use v6;

sub deck( Str @cards, UInt $how-many, *@numbers --> List ) {
    return (@numbers X~ @cards)[^$how-many];
}

my Str @spanish-suits = 'bastos', 'espadas';
say deck( @spanish-suits, 4, 1,3,5);

=output
(1bastos 1espadas 3bastos 3espadas)


