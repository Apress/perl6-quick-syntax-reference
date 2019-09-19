#!/usr/bin/env perl6

use v6;

my $concentration = shell "concentration", :in;
$concentration.in.put("1,1 2,2");

=output


