#!/usr/bin/env perl6

use v6;

say "1" ~~ 1;
my $a-set = set <1 2 3>;
say $a-set ~~ Set;
my @bound = <3 33 333>;
my @bind := @bound;
say @bound ~~ @bind;
say @bound ~~ (3, *, 333 );
say @bound ~~ Iterable;
say 3 ~~ ^5;
say  (3, *, 333 ) ~~ @bound ;
say ^5 ~~ 3;
say "Sota" ~~ "Sota" | "Caballo" | "Rey";
say "As" ~~ "Sota" | "Caballo" | "Rey";
my %myth-objects =  %(Þor => "Mjólnir", Oðinn => "Hugin") ;
say "Oðinn" ~~ %myth-objects;

=output
True
True
True
True
True
True
False
False
True
False
True

