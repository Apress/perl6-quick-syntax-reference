#!/usr/bin/env perl6

use v6;
use lib <. Chapter11>;

use Deck;

my Deck $this-deck .= new;

multi sub MAIN() {
    say "Your card ", $this-deck.draw;
}

multi sub MAIN( $how-many ) {
    say "Cards ", $this-deck.draw( $how-many ).join(" ❦ ");
}

=output
/^^Your/
