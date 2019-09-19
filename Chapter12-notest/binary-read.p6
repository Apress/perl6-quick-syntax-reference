#!/usr/bin/env perl6

use LWP::Simple;

constant $filename = "/tmp/camelia.ico";
my $binary-file = $filename.IO.open: :bin, :r;
my $camelia = $binary-file.read;
$binary-file.close;
say "Read ", $camelia.elems, " bytes";

