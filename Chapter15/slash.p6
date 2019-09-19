#!/usr/bin/env perl6

use v6;


for <foo bar baz> -> $m {
    $m ~~ m/foo/;
    $/.say if $/;
}

=output
｢foo｣

