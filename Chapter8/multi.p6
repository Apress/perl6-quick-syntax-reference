#!/usr/bin/env perl6

use v6;

enum Palo <Bastos Copas Oros Espadas>;
enum Suit <♣ ♦ ♥ ♠>;

multi stringify-card( Palo $p, Int $n ) { "$n de $p" }
multi stringify-card( Suit $s, Int $n ) { "$s\c[EN QUAD]$n" }

say stringify-card( Bastos, 3 );
say stringify-card( Suit::<♣>, 5 );
=output
3 de Bastos
♣ 5
