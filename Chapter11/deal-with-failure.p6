#!/usr/bin/env perl6

use v6;
use lib <. Chapter11>;

use Decker;

my Decker $this-deck .= new;

my $draw = $this-deck.draw: (@*ARGS[0] // 1).UInt;

if $draw.defined == False {
    say "Oops, something went wrong →\n\t", $draw.exception;
} else {
    say "Cards ",  $draw.join(" ❦ ");
}

=output
/^^Cards/
