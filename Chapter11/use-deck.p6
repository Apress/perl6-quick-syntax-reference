#!/usr/bin/env perl6

use v6;
use lib <. Chapter11>;

use Deck;

my Deck $this-deck .= new;

say "One card ", $this-deck.draw;
say "Three cards ", $this-deck.draw( 3 ).join(" ❦ ");


=output
/^^"One"/
