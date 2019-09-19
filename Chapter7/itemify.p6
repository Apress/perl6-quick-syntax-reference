#!/usr/bin/env perl6

use v6;

(my $itemized = $[1,2,3]).perl.put;
$itemized[2].say;
@$itemized.perl.put;


=output
$[1, 2, 3]
3
[1, 2, 3]


