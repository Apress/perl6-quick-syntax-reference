#!/usr/bin/env perl6

use v6;

use Moves :shfl;

say shuffle( "As de bastos", "3 de oros", "Sota de espadas" );
say Moves::card-sort(<1♠ 5♣ 3♥>);

=output
/^^"("\w+/
