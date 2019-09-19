#!/usr/bin/env perl6

use v6;

my $cat = "Dead" | "Alive";

say $cat eq "Dead";
say $cat eq "Alive";

=output
any(True, False)
any(False, True)




