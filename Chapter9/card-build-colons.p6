#!/usr/bin/env perl6

use v6;

class Card {
    has $.value;
    has $.suit;
    method new ($value, $suit ) {
	return self.bless( :$value, :$suit );
    }
    submethod BUILD( :$!value, :$!suit ) {}

    multi method better-than( Card $s where $s.suit eq "Joker": Card $c) {
	return True
    }
    
    multi method better-than( Card $s: Card $c where *.suit eq $!suit) {
	if $s.value > $c.value {
	    return True
	} else {
	    return False;
	}
    }

    multi method better-than( Card $s: Card $c where *.suit ne $!suit) {
	return False;
    }
    
}


my Card $deuce = Card.new( 2, '♥' );
say Card.new( 3, '♥' ).better-than( $deuce );
say $deuce.better-than: Card.new( 3, '♦' );
say Card.new( 0, "Joker" ).better-than( $deuce );

=output
True
False
True
