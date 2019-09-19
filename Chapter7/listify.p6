#!/usr/bin/env perl6

use v6;

say (3,).^name;
say (3, my @ = 2,3,4).^name;

=output
List
List

