#!/usr/bin/env perl6

use v6;

my @a = 1,2,3;
say @a.^name;     # Array
say (1,2,3).^name # List

=output
Array
List
