#!/usr/bin/env perl6

use v6;

sub card( Int $card-number where 0 < * <= 10, $suit ) {
    return "$card-number de $suit";
}

say card( 2, "Bastos");
say card( 9, "Espadas");

=output
2 de Bastos
9 de Espadas



