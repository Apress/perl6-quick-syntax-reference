#!/usr/bin/env perl6

use v6;

sub infix:<⚙>   (Str $s, Int $n) { $s => $n };
sub postfix:<♣> (Int $n ) { "♣" ⚙ $n  };
sub postfix:<♦> (Int $n ) { "♦" ⚙ $n  };
sub postfix:<♥> (Int $n ) { "♥" ⚙ $n  };
sub postfix:<♠> (Int $n ) { "♠" ⚙ $n  };

say qq:to/CARDS/;
{10♦}
{6♥}
{2♠}
{4♣}
CARDS

=output
/"♦" \s+ \d+/


