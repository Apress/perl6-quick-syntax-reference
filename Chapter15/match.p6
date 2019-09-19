#!/usr/bin/env perl6

use v6;


for <foo bar baz> -> $m {
    my $match = $m ~~ m/foo/;
    say $match.perl;
}

=output
Match.new(pos => 3, made => Any, from => 0, hash => Map.new(()), orig => "foo", list => ())
Bool::False
Bool::False
