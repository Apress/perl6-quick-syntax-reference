#!/usr/bin/env perl6

use v6;

my $is-it-K = Ⅿ cmp 1000;
my $result = ( given $is-it-K {
                     when More {"M"}
                     when Same {"S"}
                     default {"L"}
                 }
             );

$is-it-K = "Yes" if $result eq "S";
say $is-it-K;

=output
Yes
