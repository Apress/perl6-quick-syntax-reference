#!/usr/bin/env perl6

use v6;

grammar G {
    token TOP { <alpha>+ }
}

say G.parse( "abcd" );
say G.parse( "abcd3" );
say G.subparse( "abcd3" );

constant filename = "/tmp/letters.txt";
spurt( filename, "foostastic");
say G.parsefile( filename );
unlink filename;

=output
｢abcd｣
 alpha => ｢a｣
 alpha => ｢b｣
 alpha => ｢c｣
 alpha => ｢d｣
Nil
｢abcd｣
 alpha => ｢a｣
 alpha => ｢b｣
 alpha => ｢c｣
 alpha => ｢d｣
｢foostastic｣
 alpha => ｢f｣
 alpha => ｢o｣
 alpha => ｢o｣
 alpha => ｢s｣
 alpha => ｢t｣
 alpha => ｢a｣
 alpha => ｢s｣
 alpha => ｢t｣
 alpha => ｢i｣
 alpha => ｢c｣
