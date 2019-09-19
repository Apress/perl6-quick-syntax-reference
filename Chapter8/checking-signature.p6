#!/usr/bin/env perl6

use v6;

my $card-printer = :(Int $foo, Str $bar);

sub print-card( Int $card-number,
                Str $suit,
                &printer where .signature ~~ $card-printer) {
    return printer( $card-number, $suit);
}

my &de-printer = -> Int $card, Str $suit { "$card de $suit" };
my &printer:<♦> = -> Int $card, Str $suit { "$card ♦ $suit" };

say print-card( 2, "Bastos", &de-printer);
say print-card( 9, "Espadas", &printer:<♦>);

=output
2 de Bastos
9 ♦ Espadas



