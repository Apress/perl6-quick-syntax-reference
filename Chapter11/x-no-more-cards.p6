#!/usr/bin/env perl6

use v6;
use lib <. Chapter11>;

use Deckie;

my Deckie $this-deck .= new;

for ^(@*ARGS[0] // 1) {
    say "Cards ",  $this-deck.draw( 2 ).join(" ❦ ");
}


=output
/^^Cards/
