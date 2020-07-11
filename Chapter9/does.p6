#!/usr/bin/env perl6

use v6;

role Hand {
    method draw () { self.pick };
}

my @my-hand does Hand = <5♠ 3♦ 8♦>;

say @my-hand.draw;

=output
/\d+/
