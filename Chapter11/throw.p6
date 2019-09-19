#!/usr/bin/env perl6

use v6;
use lib <. Chapter11>;

use Deck;

my $this-deck = Deck.new( cards => ( <A J Q K> X~ <♠ ♦ ♣ ♥> ) );

multi sub MAIN() {
    say "Your card ", $this-deck.draw;
}

multi sub MAIN( UInt $how-many ) {
    if $how-many > 16 {
	X::Numeric::Overflow.new.throw ;
    }
    say "Cards ", $this-deck.draw( $how-many ).join(" ❦ ");
}

=output
/^^Your/
