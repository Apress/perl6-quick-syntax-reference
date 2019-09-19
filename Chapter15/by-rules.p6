#!/usr/bin/env perl6

use v6;
use lib <. Chapter15>;


use Cards;

say Cards.parse( "Alice plays 7♥", :rule<hand> );
say Cards.parse( "wins", :rule<action> );


=output
Action→ plays
Action→ draws
Action→ wins
