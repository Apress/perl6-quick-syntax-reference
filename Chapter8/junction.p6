#!/usr/bin/env perl6

use v6;

my $numbers = Junction.new("any", 1..30);
say $numbers %% 3;

=output
any(False, False, True, False, False, True, False, False, True, False, False, True, False, False, True, False, False, True, False, False, True, False, False, True, False, False, True, False, False, True)



