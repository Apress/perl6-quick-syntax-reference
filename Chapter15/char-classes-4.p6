#!/usr/bin/env perl6

use v6;


say  "10 ♦" ~~ / (\d+) \s+ (<[♥ ♠ ♣ ♦]>)  /;

=output
｢10 ♦｣
 0 => ｢10｣
 1 => ｢♦｣




