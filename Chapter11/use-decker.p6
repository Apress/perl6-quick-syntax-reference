#!/usr/bin/env perl6

use v6;
use lib <. Chapter11>;

use Decker;

my Decker $this-deck .= new;

my UInt $how-many = (@*ARGS[0] // 1).UInt;
say "Cards ", $this-deck.draw( $how-many ).join(" ❦ ");

=output
/^^Cards/
