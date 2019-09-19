#!/usr/bin/env perl6

use v6;

my $is-it-K = -> $test { given $test {
                               when More {"M"}
                               when Same {"S"}
                               default {"L"}
                           }
                       };

say $is-it-K(Ⅿ cmp 1000) eq "S" ?? "Yes" !! "No";

=output
Yes
