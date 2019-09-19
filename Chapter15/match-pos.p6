#!/usr/bin/env perl6

use v6;


my $match = "foostatic" ~~ m/sta/;
say "From {$match.from} to {$match.to}";
say "Before {$match.prematch} and after {$match.postmatch}";

=output
From 3 to 6
Before foo and after tic
