#!/usr/bin/env perl6

use v6;
use lib <. Chapter15>;


use Cards;
use Cards-Who;

my $to-parse = "Alice plays 7♥,Bob draws 8♠,Cara wins A♦";
my $match = Cards.parse( $to-parse, actions => Cards-Who );

say $match.made;

=output
Alice → 7♥
Bob → 8♠
Cara → A♦
