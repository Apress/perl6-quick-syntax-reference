#!/usr/bin/env perl6

use v6;

my $module = Bool.pick?? "Moves" !! "Moves-Pro";

require ::($module);
say ::("$module")::EXPORT::DEFAULT::('&shuffle')( "As de bastos", "3 de oros", "Sota de espadas" );

=output
/^^"("\w+/
