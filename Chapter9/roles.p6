#!/usr/bin/env perl6

use v6;

role Card-values {
    has @.values;
    method one-value { @!values.pick };
}


role Card-suits {
    has @.suits;
    method one-suit { @!suits.pick };
}

class Card-types does Card-values does Card-suits {
    method get-one { [self.one-value, self.one-suit ] };
}

my @values = (2..10);
@values = @values.append( <J Q K Ace> );
my $french-cards = Card-types.new( :@values, suits => <♦ ♠ ♥ ♣> );
say $french-cards.get-one;

=output
/"["/


