#!/usr/bin/env perl6

use v6;

sub term:<✏> { return (^10).pick =>  <♣ ♦ ♥ ♠>.pick };

say ✏;

=output
/\s+ "=>" \s+/
