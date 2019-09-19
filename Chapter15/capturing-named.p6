#!/usr/bin/env perl6

use v6;


my $card =  "10 ♥" ~~ m/ $<value> = (..?) " "  $<suit> = ("♥" | "♠" | "♣" | "♦")  /;
say $_.key => $_.value for $card.hash;
say "$<value> of $<suit>";
say $card<value>;
say $/<suit>;


=output
value => ｢10｣
suit => ｢♥｣
10 of ♥
｢10｣
｢♥｣



