#!/usr/bin/env perl6

use v6;

proto stringify-card( Str, Int $? ) {*}
multi stringify-card( Str $p ) { "▶ $p" }
multi stringify-card( $p where (* ~~ any <Bastos Copas Oros Espadas>),
                      Int $n ) { samewith "$n de $p" }
multi stringify-card( $s where (* ~~ any <♣ ♦ ♥ ♠>), Int $n ) { samewith "$s\c[EN QUAD]$n" }

say stringify-card( "Bastos", 3 );
say stringify-card( "♣", 5 );
=output
▶ 3 de Bastos
▶ ♣ 5

