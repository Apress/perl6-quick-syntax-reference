#!/usr/bin/env perl6

use v6;

role Card {
    method Str(::T:) {
        when T ~~ Str {
            my @pair = self.comb;
            return @pair[0] ~ " of " ~ @pair[1..*].join("");
        }
        when T ~~ Pair {
            return self.value ~ " of " ~ self.key;
        }
    }
}

my $deuce = "2♠" but Card;
say $deuce.Str;
my $ace = :Bastos("As") but Card;
say $ace.Str;
say $ace.^name;

=output
2 of ♠
As of Bastos
Pair+{Card}
