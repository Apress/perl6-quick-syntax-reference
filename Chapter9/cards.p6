#!/usr/bin/env perl6

use v6;

class Card {
    has $.value;
    has $.suit;

    method show() { "{self.value} of $!suit" }
}


my Card $deuce = Card.new( value => 2, suit => '♥' );
say $deuce.map( { .value, .suit } );
say $deuce.perl;
say $deuce.show;

=output
((2 ♥))
Card.new(value => 2, suit => "♥")
2 of ♥
