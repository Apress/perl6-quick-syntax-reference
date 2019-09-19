#!/usr/bin/env perl6

use v6;


say <. Chapter12>.map( * ~ "/x.p6") .grep( { .IO.e } ).map( { $_ => .IO.s } )

=output
/^^"("/

