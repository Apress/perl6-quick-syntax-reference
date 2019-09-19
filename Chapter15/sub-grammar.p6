#!/usr/bin/env perl6

use v6;

my token card   { [ 1..9 | "10" | <[AJQK]> ] ["♥" | "♠" | "♣" | "♦"] }

say "10♥" ~~ &card;
say "J♠" ~~ &card;


my  token player { <upper><alpha>+ }
say "Jimmy" ~~ &player;

=output
｢10♥｣
｢J♠｣
｢Jimmy｣
 upper => ｢J｣
 alpha => ｢i｣
 alpha => ｢m｣
 alpha => ｢m｣
 alpha => ｢y｣
