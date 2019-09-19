#!/usr/bin/env perl6

use v6;

my $suits = rx/<[♥ ♠ ♣ ♦]>/;
say "Q♠" ~~ /^«(.+)»($suits)$/;

=output
｢Q♠｣
 0 => ｢Q｣
 1 => ｢♠｣






