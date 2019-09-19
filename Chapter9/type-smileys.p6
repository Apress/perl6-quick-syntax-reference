#!/usr/bin/env perl6

use v6;

proto stringify-card( Str, |) {*}
multi stringify-card( $s where (* ~~ any <♣ ♦ ♥ ♠>), Any:D $n ) { "$s\c[EN QUAD]$n" }
multi stringify-card( $s where (* ~~ any <♣ ♦ ♥ ♠>), Any:U $n ) {
    "$s\c[EN QUAD]" ~ $n.new((1..10).pick);
}


say stringify-card( "♣", 5 );
say stringify-card( "♥", Int );

=output
/^"♣ 5"/
