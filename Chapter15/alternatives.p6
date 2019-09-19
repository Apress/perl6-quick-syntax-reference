#!/usr/bin/env perl6

use v6;


say "foo baz bar" ~~ m:g/ [fo+ | ba.] /;
say "foo bar baz" ~~ m/ fo.+?b /;
say "10 ♥" ~~ m/ ..? " "  "♥" | "♠" | "♣" | "♦"  /;

=output
(｢foo｣ ｢baz｣ ｢bar｣)
｢foo b｣
｢10 ♥｣


