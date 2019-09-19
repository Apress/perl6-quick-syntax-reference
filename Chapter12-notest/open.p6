#!/usr/bin/env perl6

use v6;


my $open-first = "/tmp/cards.txt".IO.open: :mode<wo>;
$open-first.put: 1..10 X~ <♠ ♦ ♣ ♥>;
$open-first.close;



