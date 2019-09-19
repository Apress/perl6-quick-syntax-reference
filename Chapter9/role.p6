#!/usr/bin/env perl6

use v6;

role Card-values {
    has @.values;
    method one { @!values.pick };
}

class Card-types does Card-values {
    has @.suits;
    method get-one { [@!suits.pick, self.one ] };
}

my @values = (2..10);
@values = @values.append( <J Q K Ace> );
my $french-cards = Card-types.new( :@values, suits => <♦ ♠ ♥ ♣> );
say $french-cards.get-one;

=output
/"["/


