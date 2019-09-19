#!/usr/bin/env perl6

use v6;

sub this-will-take( $n ) {
    state $us-fugit = now;
    my @fib = 1,1, * + * … ∞;
    my $nth = @fib[$n];
    (my $save, $us-fugit) = ($us-fugit, now);
    return $nth, $us-fugit - $save, $us-fugit;
}

for 100,1000,10000 {
    my ($res,$took,$final ) = this-will-take( $_ );
    say "Computing $res took $took, finished at $final";
}


=output
/^^Computing \s /
