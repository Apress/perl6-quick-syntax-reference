#!/usr/bin/env perl6

use v6;

sub draw( @cards, &drawer:(Positional) ) {
    return drawer(@cards);
}

my @cards = <Bastos Espadas> X~ "❖❖" X~ <Sota Caballo Rey>;
sub first-drawer( @c ) { @c.shift };
sub last-drawer(@c) { @c.pop };

say draw( @cards, &first-drawer );
say draw( @cards, &last-drawer );

=output
Bastos❖❖Sota
Espadas❖❖Rey

