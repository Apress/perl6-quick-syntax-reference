#!/usr/bin/env perl6

use v6;


say "foo baz bar" ~~ m/ fo+" ba".?" ba"r* /;

=output
｢foo baz bar｣

