#!/usr/bin/env perl6

use v6;
use lib <. Chapter11>;

use Deck;

my Deck $this-deck .= new;

my $how-many = %*ENV<HOW_MANY> // 1;
say "Cards ", $this-deck.draw( $how-many ).join(" ❦ ");

=output
/^^Cards/
