#!/usr/bin/env perl6

use v6;

sub cmp-to-s( $lhs, $rhs ) {
    given $lhs cmp $rhs {
        when More {"M"}
        when Same {"S"}
        default {"L"}
    }
}

say cmp-to-s(Ⅿ, 1000) eq "S" ?? "Yes" !! "No";

=output
Yes
