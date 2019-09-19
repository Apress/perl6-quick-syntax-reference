#!/usr/bin/env perl6

use v6;

sub shuffle-pro( *@deck ) {
    @deck.pick( * ).reverse;
}

sub shuffle( *@deck ) {
    @deck.pick( * );
}

my $pro = Bool.pick?? "" !! "-pro";

say ::("\&shuffle$pro")( "As de bastos", "3 de oros", "Sota de espadas" );

=output
/^^"("\w+/
