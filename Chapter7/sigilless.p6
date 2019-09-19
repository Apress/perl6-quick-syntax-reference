#!/usr/bin/env perl6

use v6;

my @de-sigilled = ^3;
(my \up-to-three = @de-sigilled).say;
@de-sigilled[3] = 3;
up-to-three.say;
up-to-three[4] = 4;
say @de-sigilled;

=output
[0 1 2]
[0 1 2 3]
[0 1 2 3 4]
