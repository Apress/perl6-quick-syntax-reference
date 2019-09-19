#!/usr/bin/env perl6

use v6;

my $concentration = Proc.new: :in :out;
$concentration.shell: "concentration";
$concentration.in.say("1,1 2,2");
$concentration.in.close;
say "Output is \n\t", $concentration.out.lines().join("\n\t");

=output
/"Output is"/

