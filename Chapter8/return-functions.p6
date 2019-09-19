#!/usr/bin/env perl6

use v6;

sub dealer( @cards --> Callable ) {
    my  &deck = sub {
        state @cards-we-have = @cards;
        my @shuffled = @cards-we-have.pick: *;
        my $card = @shuffled.pop;
        @cards-we-have = @shuffled;
        return $card;
    }
    return &deck;
}

my &deck = dealer( <Bastos Espadas> X~ "❖❖" X~ <Sota Caballo Rey>);

deck().say for ^3;

=output
/"❖❖"/
