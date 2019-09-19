#!/usr/bin/env perl6

use v6;

my @a := 1,2,3;
say @a.^name;     # List
@a := 4,5;
say @a.^name;

=output
List
List

