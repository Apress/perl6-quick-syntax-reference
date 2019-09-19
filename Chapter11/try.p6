#!/usr/bin/env perl6

use v6;
use lib <. Chapter11>;

use Deckeroo;

my Deckeroo $this-deck .= new;

try {
    for ^(@*ARGS[0] // 1) {
	say "Cards ",  $this-deck.draw(( @*ARGS[1] // 2 ).UInt ).join(" ❦ ");
    }
}

=output
/^^Cards/
