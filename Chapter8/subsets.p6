#!/usr/bin/env perl6

use v6;

subset CardNumber of Int where 0 < * <= 10;

sub card( CardNumber $card-number, $suit ) {
    return "$card-number de $suit";
}

say card( 2, "Bastos");
say card( 9, "Espadas");

=output
2 de Bastos
9 de Espadas



