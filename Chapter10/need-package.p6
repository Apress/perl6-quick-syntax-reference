#!/usr/bin/env perl6

use v6;

need Moves;
import Moves;

say shuffle( "As de bastos", "3 de oros", "Sota de espadas" );
say card-sort(<1♠ 5♣ 3♥>);

=output
/^^"("\w+/
