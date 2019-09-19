#!/usr/bin/env perl6

use v6;

my $deuce = "2♠" but 2;
my $ace   = "Ace ♠" but 100;
say $deuce.^name;

say $deuce.Int < $ace.Int;

=output
Str+{<anon|1>}
True
