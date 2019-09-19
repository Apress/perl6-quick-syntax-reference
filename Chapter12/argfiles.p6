#!/usr/bin/env perl6

use v6;

if $*ARGFILES.path ~~ IO::Special {
    say "No input"
} else {
    $*ARGFILES.lines.elems.say
}

=output
No input
