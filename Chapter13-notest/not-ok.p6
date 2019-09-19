#!/usr/bin/env perl6

use v6;

use Test;

sub returns-forty-two( --> 42 ) {};

ok( returns-forty-two() == 66, "Returns 42");


