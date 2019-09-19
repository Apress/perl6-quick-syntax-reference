#!/usr/bin/env perl6

use v6;

my $us-fugit = now;

sub this-will-take( $n ) {
    temp $us-fugit;
    my @fib = 1,1, * + * … ∞;
    my $nth = @fib[$n];
    (my $save, $us-fugit) = ($us-fugit, now);
    return $nth, $us-fugit - $save, $us-fugit;
}

for 100,1000,10000 {
    my ($res,$took,$final ) = this-will-take( $_ );
    say "Computing $res took $took from start finished at $final";
}
say "Everything took ", now - $us-fugit;

=output
/^^Everything \s /
