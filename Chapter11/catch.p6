#!/usr/bin/env perl6

use v6;
use lib <. Chapter11>;

use Deckeroo;

my Deckeroo $this-deck .= new;

CATCH {
    when X::AdHoc { .Str.say }
    when X::OutOfRange { say "We don't have that many cards: ", $_.Str; }
    default { say "Something has happened: $_"; }
}

for ^(@*ARGS[0] // 1) {
    say "Cards ",  $this-deck.draw(( @*ARGS[1] // 2 ).UInt ).join(" ❦ ");
}

=output
/^^Cards/
