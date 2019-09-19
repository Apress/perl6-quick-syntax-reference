#!/usr/bin/env perl6

use v6;

sub stringify-card( $s, ::T $n ) {
    when T ~~ Str { "$n of $s" }
    when T ~~ Int { "$n\c[EN QUAD]$s" }
    default { "$n$s" }
}



say stringify-card( "♣", 5 );
say stringify-card( "♥", "Ace" );

=output
5 ♣
Ace of ♥
