#!/usr/bin/env perl6

use v6;
use lib <. Chapter15>;


use Cards;
use Cards-Action;

my $to-parse = "Alice plays 7♥,Bob draws 8♠,Cara wins A♦";
my $match = Cards.parse( $to-parse, actions => Cards-Action );

say $match.made;

=output
Action→ plays
Action→ draws
Action→ wins
