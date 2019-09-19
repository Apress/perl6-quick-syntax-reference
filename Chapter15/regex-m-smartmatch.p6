#!/usr/bin/env perl6

use v6;


for <foo bar baz> -> $m {
    say "$m matches" if $m ~~ m/foo/;
}

=output
foo matches
