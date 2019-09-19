#!/usr/bin/env perl6

use LWP::Simple;

constant $filename = "/tmp/camelia.ico";
my $camelia = LWP::Simple.get( 'https://docs.perl6.org/favicon.ico' );
my $binary-file = $filename.IO.open: :bin, :w;
$binary-file.write( $camelia );
$binary-file.close;
say "Written $filename";

=output
Written /tmp/camelia.ico
