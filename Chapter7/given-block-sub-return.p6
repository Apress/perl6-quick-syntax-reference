#!/usr/bin/env perl6

use v6;

sub cmp-to-s( $lhs, $rhs ) {
    my $result = ( given $lhs cmp $rhs {
        when More {"M"}
        when Same {"S"}
        default {"L"}
    });
    return $result;
}

say cmp-to-s(Ⅿ, 1001) eq "S" ?? "Yes" !! "No";

=output
No
