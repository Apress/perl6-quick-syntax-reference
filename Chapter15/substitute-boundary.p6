#!/usr/bin/env perl6

use v6;

$_ = "3♠";
s/^«(.+)»(<[♥ ♠ ♣ ♦]>)$/$1$0/;
.say;

=output
♠3







