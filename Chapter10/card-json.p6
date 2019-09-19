#!/usr/bin/env perl6

use JSON::Fast;

say to-json { 3 => '♠', 8 => '♣' };

=output
/"♣"/
