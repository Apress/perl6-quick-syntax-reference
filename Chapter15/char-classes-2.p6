#!/usr/bin/env perl6

use v6;


say  "3 ♣" ~~ / (\d+) \s+ (<:Block('Miscellaneous Symbols')>)  /;

=output
｢3 ♣｣
 0 => ｢3｣
 1 => ｢♣｣



