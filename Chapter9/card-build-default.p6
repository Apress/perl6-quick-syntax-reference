#!/usr/bin/env perl6

use v6;

class Card {
    has $.value;
    has $.suit;
    has $!victories = 0;
    
    method new ($value, $suit ) {
	return self.bless( :$value, :$suit );
    }
    submethod BUILD( :$!value, :$!suit ) {}
    method better-than( Card $c ) {
	if $c.suit eq $!suit {
	    if $!value > $c.value {
		$!victories++;
		return True
	    } else {
		return False;
	    }
	} else {
	    return False;
	}
    }
    method gist() { "$!value of $!suit  won $!victories times" }
}

my Card $deuce = Card.new( 2, '♥' );
say $deuce;

say Card.new( 3, '♥' ).better-than( $deuce );
say $deuce.better-than: Card.new( 3, '♦' );
say $deuce.better-than: Card.new( 1, '♥' );
say $deuce;

=output
2 of ♥  won 0 times
True
False
True
2 of ♥  won 1 times

