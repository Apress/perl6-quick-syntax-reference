#!/usr/bin/env perl6

use v6;

sub deck( :@suits, UInt :$how-many = 4, :@cards --> List ) {
    return (@cards X~ @suits)[^$how-many];
}

say deck( suits => <bastos espadas>, how-many => 4, cards => (1,3,5) );

my @suits = <♥ ♣ ♠ ♦>;
my @cards = "Ace"; 
say deck( :@suits, :@cards );

=output
(1bastos 1espadas 3bastos 3espadas)
(Ace♥ Ace♣ Ace♠ Ace♦)

