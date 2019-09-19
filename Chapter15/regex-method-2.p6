#!/usr/bin/env perl6

use v6;

my regex suits { <[♥ ♠ ♣ ♦]> };
say "Q♠" ~~ /^«(.+)»<suits>$/;

say "♣ ♦" ~~ &suits;

say suits( $/ );

$_ = "♥ ♠";

=output
｢Q♠｣
 0 => ｢Q｣
 suits => ｢♠｣
｢♣｣
｢♦｣







