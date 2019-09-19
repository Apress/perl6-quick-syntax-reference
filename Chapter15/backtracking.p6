#!/usr/bin/env perl6

use v6;

$_ = "foostastic";

say m/(\w+)/;
say m/(\w+)s/;
say m/(\w+) s \w ** 4 /;

=output
｢foostastic｣
 0 => ｢foostastic｣
｢foostas｣
 0 => ｢foosta｣
｢foostast｣
 0 => ｢foo｣








