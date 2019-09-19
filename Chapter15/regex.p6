#!/usr/bin/env perl6

use v6;


say /foo/.^name;
say rx/foo/.^name;
say rx«foo».^name;

=output
Regex
Regex
Regex
