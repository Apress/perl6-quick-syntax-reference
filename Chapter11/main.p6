#!/usr/bin/env perl6

use v6;
use lib <. Chapter11>;

use Deck;

sub MAIN( $how-many = 1) {

    my Deck $this-deck .= new;
    say "Cards ", $this-deck.draw( $how-many ).join(" ❦ ");

}

=output
/^^Cards/
