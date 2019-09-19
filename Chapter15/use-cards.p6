#!/usr/bin/env perl6

use v6;
use lib <. Chapter15>;


use Cards;

my $match = Cards.parse( "Alice plays 7♥,Bob draws 8♠,Cara wins A♦" );

for $match<hand> -> $h {
    say "Action→ $h<action>";
}

=output
Action→ plays
Action→ draws
Action→ wins
