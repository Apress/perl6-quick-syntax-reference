#!/usr/bin/env perl6

use v6;


my $card =  "10 ♥" ~~ m/ (..?) " "  ("♥" | "♠" | "♣" | "♦")  /;
say $card;
.say for $card.list;
say $0;
say $/[0];
=output
｢10 ♥｣
 0 => ｢10｣
 1 => ｢♥｣
｢10｣
｢♥｣
｢10｣
｢10｣


