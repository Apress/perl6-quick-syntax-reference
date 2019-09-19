#!/usr/bin/env perl6

use v6;


my $match = "stafoostatic" ~~ m:g:2nd/sta/;
say "From {$match.prematch} to {$match.postmatch}";

=output
From stafoo to tic

