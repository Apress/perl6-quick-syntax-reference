#!/usr/bin/env perl6

use v6;

say {3}.^name; # Block
say (my @a).^name # Array
=output
Block
Array
