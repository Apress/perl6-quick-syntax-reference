#!/usr/bin/env perl6

use v6;


say <. Chapter12>.map:  { $_ => "$_/x.p6".IO.e };

=output
/Chapter12/

