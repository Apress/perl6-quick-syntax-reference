#!/usr/bin/env perl6

use v6;


for <foo bar baz> {
    say "$_ matches" if m/foo/;
}

=output
foo matches
