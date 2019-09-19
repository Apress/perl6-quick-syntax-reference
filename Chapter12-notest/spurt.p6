#!/usr/bin/env perl6

use v6;


"/tmp/cards.txt".IO.spurt: 1..10 X~ <♠ ♦ ♣ ♥>;



