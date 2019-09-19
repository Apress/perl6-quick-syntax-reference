#!/usr/bin/env perl6

use v6;

grammar Game {
    token TOP { <player>  \s+ <action> \s+ <card> }
    token card   { [ <[1..9]> | "10" | <[AJQK]> ] ["♥" | "♠" | "♣" | "♦"] }
    token action { <alpha>+ }
    token player { <upper><alpha>+ }
}

say Game.parse( "Alice plays K♠");

=output
｢Alice plays K♠｣
 player => ｢Alice｣
  upper => ｢A｣
  alpha => ｢l｣
  alpha => ｢i｣
  alpha => ｢c｣
  alpha => ｢e｣
 action => ｢plays｣
  alpha => ｢p｣
  alpha => ｢l｣
  alpha => ｢a｣
  alpha => ｢y｣
  alpha => ｢s｣
 card => ｢K♠｣
