#!/usr/bin/env perl6

use v6;

sub bm( &to-time ) { my $start = now; return to-time() ~ "⏰" ~ now - $start; }

my int @natives = ^5_000_000;
say bm( { [+] @natives } );

my @regular = ^5_000_000;
say bm( { [+] @regular } );

=output
/12499997500000 \⏰/
