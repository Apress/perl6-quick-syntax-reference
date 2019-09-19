#!/usr/bin/env perl6

use v6;

use Test;

sub returns-forty-two( --> 42 ) {};

is( returns-forty-two, 42, "Returns 42");

