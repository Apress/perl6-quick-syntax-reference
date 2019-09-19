#!/usr/bin/env perl6

use v6;

use Moves;
say Moves::EXPORT::.keys;
say Moves::EXPORT::DEFAULT::.keys;
say &Moves::EXPORT::DEFAULT::shuffle( "As de bastos", "3 de oros", "Sota de espadas" );

=output
/^^"("\w+/
