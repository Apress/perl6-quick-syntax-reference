#!/usr/bin/env perl6

use v6;

use Testo;

plan 1;
my $path = "./ok.p6".IO.e??"./ok.p6"!!"Chapter13/ok.p6";
is-run $path, :out("ok 1 - Returns 42\n"), "Runs test";


=output
/ok/

